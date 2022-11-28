# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.2.4] - 2022-11-11

### Added

- Add `blocklist` option to prevent generating unwanted CSS ([#9812](https://github.com/tailwindlabs/tailwindcss/pull/9812))

### Fixed

- Fix watching of files on Linux when renames are involved ([#9796](https://github.com/tailwindlabs/tailwindcss/pull/9796))
- Make sure errors are always displayed when watching for changes ([#9810](https://github.com/tailwindlabs/tailwindcss/pull/9810))

## [3.2.3] - 2022-11-09

### Fixed

- Fixed use of `raw` content in the CLI ([#9773](https://github.com/tailwindlabs/tailwindcss/pull/9773))
- Pick up changes from files that are both context and content deps ([#9787](https://github.com/tailwindlabs/tailwindcss/pull/9787))
- Sort pseudo-elements ONLY after classes when using variants and `@apply` ([#9765](https://github.com/tailwindlabs/tailwindcss/pull/9765))
- Support important utilities in the safelist (pattern must include a `!`) ([#9791](https://github.com/tailwindlabs/tailwindcss/pull/9791))

## [3.2.2] - 2022-11-04

### Fixed

- Escape special characters in resolved content base paths ([#9650](https://github.com/tailwindlabs/tailwindcss/pull/9650))
- Don't reuse container for array returning variant functions ([#9644](https://github.com/tailwindlabs/tailwindcss/pull/9644))
- Exclude non-relevant selectors when generating rules with the important modifier ([#9677](https://github.com/tailwindlabs/tailwindcss/issues/9677))
- Fix merging of arrays during config resolution ([#9706](https://github.com/tailwindlabs/tailwindcss/issues/9706))
- Ensure configured `font-feature-settings` are included in Preflight ([#9707](https://github.com/tailwindlabs/tailwindcss/pull/9707))
- Fix fractional values not being parsed properly inside arbitrary properties ([#9705](https://github.com/tailwindlabs/tailwindcss/pull/9705))
- Fix incorrect selectors when using `@apply` in selectors with combinators and pseudos ([#9722](https://github.com/tailwindlabs/tailwindcss/pull/9722))
- Fix cannot read properties of undefined (reading 'modifier') ([#9656](https://github.com/tailwindlabs/tailwindcss/pull/9656), [aa979d6](https://github.com/tailwindlabs/tailwindcss/commit/aa979d645f8bf4108c5fc938d7c0ba085b654c31))

## [3.2.1] - 2022-10-21

### Fixed

- Fix missing `supports` in types ([#9616](https://github.com/tailwindlabs/tailwindcss/pull/9616))
- Fix missing PostCSS dependencies in the CLI ([#9617](https://github.com/tailwindlabs/tailwindcss/pull/9617))
- Ensure `micromatch` is a proper CLI dependency ([#9620](https://github.com/tailwindlabs/tailwindcss/pull/9620))
- Ensure modifier values exist when using a `modifiers` object for `matchVariant` ([ba6551db0f2726461371b4f3c6cd4c7090888504](https://github.com/tailwindlabs/tailwindcss/commit/ba6551db0f2726461371b4f3c6cd4c7090888504))

## [3.2.0] - 2022-10-19

### Added

- Add new `@config` directive ([#9405](https://github.com/tailwindlabs/tailwindcss/pull/9405))
- Add new `relative: true` option to resolve content paths relative to the config file ([#9396](https://github.com/tailwindlabs/tailwindcss/pull/9396))
- Add new `supports-*` variant ([#9453](https://github.com/tailwindlabs/tailwindcss/pull/9453))
- Add new `min-*` and `max-*` variants ([#9558](https://github.com/tailwindlabs/tailwindcss/pull/9558))
- Add new `aria-*` variants ([#9557](https://github.com/tailwindlabs/tailwindcss/pull/9557), [#9588](https://github.com/tailwindlabs/tailwindcss/pull/9588))
- Add new `data-*` variants ([#9559](https://github.com/tailwindlabs/tailwindcss/pull/9559), [#9588](https://github.com/tailwindlabs/tailwindcss/pull/9588))
- Add new `break-keep` utility for `word-break: keep-all` ([#9393](https://github.com/tailwindlabs/tailwindcss/pull/9393))
- Add new `collapse` utility for `visibility: collapse` ([#9181](https://github.com/tailwindlabs/tailwindcss/pull/9181))
- Add new `fill-none` utility for `fill: none` ([#9403](https://github.com/tailwindlabs/tailwindcss/pull/9403))
- Add new `stroke-none` utility for `stroke: none` ([#9403](https://github.com/tailwindlabs/tailwindcss/pull/9403))
- Add new `place-content-baseline` utility for `place-content: baseline` ([#9498](https://github.com/tailwindlabs/tailwindcss/pull/9498))
- Add new `place-items-baseline` utility for `place-items: baseline` ([#9507](https://github.com/tailwindlabs/tailwindcss/pull/9507))
- Add new `content-baseline` utility for `align-content: baseline` ([#9507](https://github.com/tailwindlabs/tailwindcss/pull/9507))
- Add support for configuring default `font-feature-settings` for a font family ([#9039](https://github.com/tailwindlabs/tailwindcss/pull/9039))
- Add standalone CLI build for 32-bit Linux on ARM (`node16-linux-armv7`) ([#9084](https://github.com/tailwindlabs/tailwindcss/pull/9084))
- Add future flag to disable color opacity utility plugins ([#9088](https://github.com/tailwindlabs/tailwindcss/pull/9088))
- Add negative value support for `outline-offset` ([#9136](https://github.com/tailwindlabs/tailwindcss/pull/9136))
- Add support for modifiers to `matchUtilities` ([#9541](https://github.com/tailwindlabs/tailwindcss/pull/9541))
- Allow negating utilities using `min`/`max`/`clamp` ([#9237](https://github.com/tailwindlabs/tailwindcss/pull/9237))
- Implement fallback plugins when there is ambiguity between plugins when using arbitrary values ([#9376](https://github.com/tailwindlabs/tailwindcss/pull/9376))
- Support `sort` function in `matchVariant` ([#9423](https://github.com/tailwindlabs/tailwindcss/pull/9423))
- Upgrade to `postcss-nested` v6.0 ([#9546](https://github.com/tailwindlabs/tailwindcss/pull/9546))

### Fixed

- Use absolute paths when resolving changed files for resilience against working directory changes ([#9032](https://github.com/tailwindlabs/tailwindcss/pull/9032))
- Fix ring color utility generation when using `respectDefaultRingColorOpacity` ([#9070](https://github.com/tailwindlabs/tailwindcss/pull/9070))
- Sort tags before classes when `@apply`-ing a selector with joined classes ([#9107](https://github.com/tailwindlabs/tailwindcss/pull/9107))
- Remove invalid `outline-hidden` utility ([#9147](https://github.com/tailwindlabs/tailwindcss/pull/9147))
- Honor the `hidden` attribute on elements in preflight ([#9174](https://github.com/tailwindlabs/tailwindcss/pull/9174))
- Don't stop watching atomically renamed files ([#9173](https://github.com/tailwindlabs/tailwindcss/pull/9173), [#9215](https://github.com/tailwindlabs/tailwindcss/pull/9215))
- Fix duplicate utilities issue causing memory leaks ([#9208](https://github.com/tailwindlabs/tailwindcss/pull/9208))
- Fix `fontFamily` config TypeScript types ([#9214](https://github.com/tailwindlabs/tailwindcss/pull/9214))
- Handle variants on complex selector utilities ([#9262](https://github.com/tailwindlabs/tailwindcss/pull/9262))
- Fix shared config mutation issue ([#9294](https://github.com/tailwindlabs/tailwindcss/pull/9294))
- Fix ordering of parallel variants ([#9282](https://github.com/tailwindlabs/tailwindcss/pull/9282))
- Handle variants in utility selectors using `:where()` and `:has()` ([#9309](https://github.com/tailwindlabs/tailwindcss/pull/9309))
- Improve data type analysis for arbitrary values ([#9320](https://github.com/tailwindlabs/tailwindcss/pull/9320))
- Don't emit generated utilities with invalid uses of theme functions ([#9319](https://github.com/tailwindlabs/tailwindcss/pull/9319))
- Revert change that only listened for stdin close on TTYs ([#9331](https://github.com/tailwindlabs/tailwindcss/pull/9331))
- Ignore unset values (like `null` or `undefined`) when resolving the classList for intellisense ([#9385](https://github.com/tailwindlabs/tailwindcss/pull/9385))
- Improve type checking for formal syntax ([#9349](https://github.com/tailwindlabs/tailwindcss/pull/9349), [#9448](https://github.com/tailwindlabs/tailwindcss/pull/9448))
- Fix incorrect required `content` key in custom plugin configs ([#9502](https://github.com/tailwindlabs/tailwindcss/pull/9502), [#9545](https://github.com/tailwindlabs/tailwindcss/pull/9545))
- Fix content path detection on Windows ([#9569](https://github.com/tailwindlabs/tailwindcss/pull/9569))
- Ensure `--content` is used in the CLI when passed ([#9587](https://github.com/tailwindlabs/tailwindcss/pull/9587))

## [3.1.8] - 2022-08-05

### Fixed

- Don’t prefix classes within reused arbitrary variants ([#8992](https://github.com/tailwindlabs/tailwindcss/pull/8992))
- Fix usage of alpha values inside single-named colors that are functions ([#9008](https://github.com/tailwindlabs/tailwindcss/pull/9008))
- Fix `@apply` of user utilities when negative and non-negative versions both exist ([#9027](https://github.com/tailwindlabs/tailwindcss/pull/9027))

## [3.1.7] - 2022-07-29

### Fixed

- Don't rewrite source maps for `@layer` rules ([#8971](https://github.com/tailwindlabs/tailwindcss/pull/8971))

### Added

- Added types for `resolveConfig` ([#8924](https://github.com/tailwindlabs/tailwindcss/pull/8924))

## [3.1.6] - 2022-07-11

### Fixed

- Fix usage on Node 12.x ([b4e637e](https://github.com/tailwindlabs/tailwindcss/commit/b4e637e2e096a9d6f2210efba9541f6fd4f28e56))
- Handle theme keys with slashes when using `theme()` in CSS ([#8831](https://github.com/tailwindlabs/tailwindcss/pull/8831))

## [3.1.5] - 2022-07-07

### Added

- Support configuring a default `font-weight` for each font size utility ([#8763](https://github.com/tailwindlabs/tailwindcss/pull/8763))
- Add support for alpha values in safe list ([#8774](https://github.com/tailwindlabs/tailwindcss/pull/8774))

### Fixed

- Improve types to support fallback values in the CSS-in-JS syntax used in plugin APIs ([#8762](https://github.com/tailwindlabs/tailwindcss/pull/8762))
- Support including `tailwindcss` and `autoprefixer` in `postcss.config.js` in standalone CLI ([#8769](https://github.com/tailwindlabs/tailwindcss/pull/8769))
- Fix using special-characters as prefixes ([#8772](https://github.com/tailwindlabs/tailwindcss/pull/8772))
- Don’t prefix classes used within arbitrary variants ([#8773](https://github.com/tailwindlabs/tailwindcss/pull/8773))
- Add more explicit types for the default theme ([#8780](https://github.com/tailwindlabs/tailwindcss/pull/8780))

## [3.1.4] - 2022-06-21

### Fixed

- Provide default to `<alpha-value>` when using `theme()` ([#8652](https://github.com/tailwindlabs/tailwindcss/pull/8652))
- Detect arbitrary variants with quotes ([#8687](https://github.com/tailwindlabs/tailwindcss/pull/8687))
- Don’t add spaces around raw `/` that are preceded by numbers ([#8688](https://github.com/tailwindlabs/tailwindcss/pull/8688))

## [3.1.3] - 2022-06-14

### Fixed

- Fix extraction of multi-word utilities with arbitrary values and quotes ([#8604](https://github.com/tailwindlabs/tailwindcss/pull/8604))
- Fix casing of import of `corePluginList` type definition ([#8587](https://github.com/tailwindlabs/tailwindcss/pull/8587))
- Ignore PostCSS nodes returned by `addVariant` ([#8608](https://github.com/tailwindlabs/tailwindcss/pull/8608))
- Fix missing spaces around arithmetic operators ([#8615](https://github.com/tailwindlabs/tailwindcss/pull/8615))
- Detect alpha value in CSS `theme()` function when using quotes ([#8625](https://github.com/tailwindlabs/tailwindcss/pull/8625))
- Fix "Maximum call stack size exceeded" bug ([#8636](https://github.com/tailwindlabs/tailwindcss/pull/8636))
- Allow functions returning parallel variants to mutate the container ([#8622](https://github.com/tailwindlabs/tailwindcss/pull/8622))
- Remove text opacity CSS variables from `::marker` ([#8622](https://github.com/tailwindlabs/tailwindcss/pull/8622))

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
- Fix `matchVariant` that use at-rules and placeholders ([#8392](https://github.com/tailwindlabs/tailwindcss/pull/8392))
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
