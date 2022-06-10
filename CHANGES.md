# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.1.2] - 2022-06-10

### Fixed

- Ensure `\` is a valid arbitrary variant token ([#8576](https://github.com/tailwindlabs/tailwindcss/pull/8576))
- Enable `postcss-import` in the CLI by default in watch mode ([#8574](https://github.com/tailwindlabs/tailwindcss/pull/8574), [#8580](https://github.com/tailwindlabs/tailwindcss/pull/8580))

## [3.1.1] - 2022-06-09

### Fixed

- Fix candidate extractor regression ([#8558](https://github.com/tailwindlabs/tailwindcss/pull/8558))
- Split `::backdrop` into separate defaults group ([#8567](https://github.com/tailwindlabs/tailwindcss/pull/8567))
- Fix postcss plugin type ([#8564](https://github.com/tailwindlabs/tailwindcss/pull/8564))
- Fix class detection in markdown code fences and slim templates ([#8569](https://github.com/tailwindlabs/tailwindcss/pull/8569))

## [3.1.0] - 2022-06-08

### Fixed

- Types: allow for arbitrary theme values (for 3rd party plugins) ([#7926](https://github.com/tailwindlabs/tailwindcss/pull/7926))
- Don’t split vars with numbers in them inside arbitrary values ([#8091](https://github.com/tailwindlabs/tailwindcss/pull/8091))
- Require matching prefix when detecting negatives ([#8121](https://github.com/tailwindlabs/tailwindcss/pull/8121))
- Handle duplicate At Rules without children ([#8122](https://github.com/tailwindlabs/tailwindcss/pull/8122))
- Allow arbitrary values with commas in `@apply` ([#8125](https://github.com/tailwindlabs/tailwindcss/pull/8125))
- Fix intellisense for plugins with multiple `@apply` rules ([#8213](https://github.com/tailwindlabs/tailwindcss/pull/8213))
- Improve type detection for arbitrary color values ([#8201](https://github.com/tailwindlabs/tailwindcss/pull/8201))
- Support PostCSS config options in config file in CLI ([#8226](https://github.com/tailwindlabs/tailwindcss/pull/8226))
- Remove default `[hidden]` style in preflight ([#8248](https://github.com/tailwindlabs/tailwindcss/pull/8248))
- Only check selectors containing base apply candidates for circular dependencies ([#8222](https://github.com/tailwindlabs/tailwindcss/pull/8222))
- Rewrite default class extractor ([#8204](https://github.com/tailwindlabs/tailwindcss/pull/8204))
- Move `important` selector to the front when `@apply`-ing selector-modifying variants in custom utilities ([#8313](https://github.com/tailwindlabs/tailwindcss/pull/8313))
- Error when registering an invalid custom variant ([#8345](https://github.com/tailwindlabs/tailwindcss/pull/8345))
- Create tailwind.config.cjs file in ESM package when running init ([#8363](https://github.com/tailwindlabs/tailwindcss/pull/8363))
- Fix `matchVariants` that use at-rules and placeholders ([#8392](https://github.com/tailwindlabs/tailwindcss/pull/8392))
- Improve types of the `tailwindcss/plugin` ([#8400](https://github.com/tailwindlabs/tailwindcss/pull/8400))
- Allow returning parallel variants from `addVariant` or `matchVariant` callback functions ([#8455](https://github.com/tailwindlabs/tailwindcss/pull/8455))
- Try using local `postcss` installation first in the CLI ([#8270](https://github.com/tailwindlabs/tailwindcss/pull/8270))
- Allow default ring color to be a function ([#7587](https://github.com/tailwindlabs/tailwindcss/pull/7587))
- Don't inherit `to` value from parent gradients ([#8489](https://github.com/tailwindlabs/tailwindcss/pull/8489))
- Remove process dependency from log functions ([#8530](https://github.com/tailwindlabs/tailwindcss/pull/8530))
- Ensure we can use `@import 'tailwindcss/...'` without node_modules ([#8537](https://github.com/tailwindlabs/tailwindcss/pull/8537))

### Changed

- Only apply hover styles when supported (future) ([#8394](https://github.com/tailwindlabs/tailwindcss/pull/8394))
- Respect default ring color opacity (future) ([#8448](https://github.com/tailwindlabs/tailwindcss/pull/8448), [3f4005e](https://github.com/tailwindlabs/tailwindcss/commit/3f4005e833445f7549219eb5ae89728cbb3a2630))

### Added

- Support PostCSS `Document` nodes ([#7291](https://github.com/tailwindlabs/tailwindcss/pull/7291))
- Add `text-start` and `text-end` utilities ([#6656](https://github.com/tailwindlabs/tailwindcss/pull/6656))
- Support customizing class name when using `darkMode: 'class'` ([#5800](https://github.com/tailwindlabs/tailwindcss/pull/5800))
- Add `--poll` option to the CLI ([#7725](https://github.com/tailwindlabs/tailwindcss/pull/7725))
- Add new `border-spacing` utilities ([#7102](https://github.com/tailwindlabs/tailwindcss/pull/7102))
- Add `enabled` variant ([#7905](https://github.com/tailwindlabs/tailwindcss/pull/7905))
- Add TypeScript types for the `tailwind.config.js` file ([#7891](https://github.com/tailwindlabs/tailwindcss/pull/7891))
- Add `backdrop` variant ([#7924](https://github.com/tailwindlabs/tailwindcss/pull/7924), [#8526](https://github.com/tailwindlabs/tailwindcss/pull/8526))
- Add `grid-flow-dense` utility ([#8193](https://github.com/tailwindlabs/tailwindcss/pull/8193))
- Add `mix-blend-plus-lighter` utility ([#8288](https://github.com/tailwindlabs/tailwindcss/pull/8288))
- Add arbitrary variants ([#8299](https://github.com/tailwindlabs/tailwindcss/pull/8299))
- Add experimental `matchVariant` API ([#8310](https://github.com/tailwindlabs/tailwindcss/pull/8310), [34fd0fb8](https://github.com/tailwindlabs/tailwindcss/commit/34fd0fb82aa574cddc5c7aa3ad7d1af5e3735e5d))
- Add `prefers-contrast` media query variants ([#8410](https://github.com/tailwindlabs/tailwindcss/pull/8410))
- Add opacity support when referencing colors with `theme` function ([#8416](https://github.com/tailwindlabs/tailwindcss/pull/8416))
- Add `postcss-import` support to the CLI ([#8437](https://github.com/tailwindlabs/tailwindcss/pull/8437))
- Add `optional` variant ([#8486](https://github.com/tailwindlabs/tailwindcss/pull/8486))
- Add `<alpha-value>` placeholder support for custom colors ([#8501](https://github.com/tailwindlabs/tailwindcss/pull/8501))

## [3.0.23] - 2022-02-16

### Fixed

- Remove opacity variables from `:visited` pseudo class ([#7458](https://github.com/tailwindlabs/tailwindcss/pull/7458))
- Support arbitrary values + calc + theme with quotes ([#7462](https://github.com/tailwindlabs/tailwindcss/pull/7462))
- Don't duplicate layer output when scanning content with variants + wildcards ([#7478](https://github.com/tailwindlabs/tailwindcss/pull/7478))
- Implement `getClassOrder` instead of `sortClassList` ([#7459](https://github.com/tailwindlabs/tailwindcss/pull/7459))
