#!/bin/bash
cd /home/kavia/workspace/code-generation/uirevamp-2024-10805-f0b3b658/frontend_ui_redesign
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

