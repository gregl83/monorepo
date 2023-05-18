#!/usr/bin/env node

const fs = require("fs");
const path = require("path");

const outputDir = process.argv[2] || "output";
const numFiles = parseInt(process.argv[3], 10) || 3;

for (let i = 1; i <= numFiles; i++) {
  const filePath = path.join(outputDir, `file${i}.txt`);
  fs.mkdirSync(path.dirname(filePath), { recursive: true });
  fs.writeFileSync(filePath, `This is file${i}`);
}