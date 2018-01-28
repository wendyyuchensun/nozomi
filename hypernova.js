'use strict';

const hypernova = require('hypernova/server');
const { createGetComponent } = require('hypernova/server');

hypernova({
  devMode: false,
  getComponent: createGetComponent({

  }),
  port: 3030,
});
