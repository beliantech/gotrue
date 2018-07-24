package test

import (
	"github.com/beliantech/gotrue/conf"
	"github.com/beliantech/gotrue/storage"
)

func SetupDBConnection(globalConfig *conf.GlobalConfiguration) (*storage.Connection, error) {
	return storage.Dial(globalConfig)
}
