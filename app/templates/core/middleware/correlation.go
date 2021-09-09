// Copyright <%- year %> <%- author %>. All rights reserved.
// Use of this source code is governed by the MIT
// license that can be found in the LICENSE file.

package middleware

import (
	"strings"

	"github.com/<%- author %>/<%- package_name %>/core/service"

	"github.com/labstack/echo/v4"
)

// Correlation middleware
func Correlation(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		corralationID := c.Request().Header.Get("x-correlation-id")

		if strings.TrimSpace(corralationID) == "" {
			corralationID = service.NewCorrelation().UUIDv4()

			c.Request().Header.Set(
				"X-Correlation-ID",
				corralationID,
			)
		}

		c.Response().Header().Set(
			"X-Correlation-ID",
			corralationID,
		)

		return next(c)
	}
}
