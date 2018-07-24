package test

import (
	"github.com/ernsheong/gotrue/conf"
	"github.com/ernsheong/gotrue/storage"
)

func SetupDBConnection(globalConfig *conf.GlobalConfiguration) (*storage.Connection, error) {
	return storage.Dial(globalConfig)
}
