# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := appfwSDL
### Generated for rule ktxtests_gyp_appfwSDL_target_frag2spirv:
$(builddir)/shaders/$(notdir $<).spv: obj := $(abs_obj)
$(builddir)/shaders/$(notdir $<).spv: builddir := $(abs_builddir)
$(builddir)/shaders/$(notdir\ $<).spv: TOOLSET := $(TOOLSET)
$(builddir)/shaders/$(notdir\ $<).spv: $(srcdir)/tests/loadtests/appfwSDL/VulkanAppSDL/shaders/textoverlay.frag
	$(call do_cmd,ktxtests_gyp_appfwSDL_target_frag2spirv_0)

all_deps += $(builddir)/shaders/$(notdir $<).spv
cmd_ktxtests_gyp_appfwSDL_target_frag2spirv_0 = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(builddir)/shaders; glslc "-fshader-stage=fragment" -o "$(builddir)/shaders/$(notdir $<).spv" "$(abspath $<)"
quiet_cmd_ktxtests_gyp_appfwSDL_target_frag2spirv_0 = RULE ktxtests_gyp_appfwSDL_target_frag2spirv_0 $@

rule_ktxtests_gyp_appfwSDL_target_frag2spirv_outputs := \
	$(builddir)/shaders/$(notdir $<).spv

### Finished generating for rule: ktxtests_gyp_appfwSDL_target_frag2spirv

### Generated for rule ktxtests_gyp_appfwSDL_target_vert2spirv:
$(builddir)/shaders/$(notdir $<).spv: obj := $(abs_obj)
$(builddir)/shaders/$(notdir $<).spv: builddir := $(abs_builddir)
$(builddir)/shaders/$(notdir\ $<).spv: TOOLSET := $(TOOLSET)
$(builddir)/shaders/$(notdir\ $<).spv: $(srcdir)/tests/loadtests/appfwSDL/VulkanAppSDL/shaders/textoverlay.vert
	$(call do_cmd,ktxtests_gyp_appfwSDL_target_vert2spirv_0)

all_deps += $(builddir)/shaders/$(notdir $<).spv
cmd_ktxtests_gyp_appfwSDL_target_vert2spirv_0 = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(builddir)/shaders; glslc "-fshader-stage=vertex" -o "$(builddir)/shaders/$(notdir $<).spv" "$(abspath $<)"
quiet_cmd_ktxtests_gyp_appfwSDL_target_vert2spirv_0 = RULE ktxtests_gyp_appfwSDL_target_vert2spirv_0 $@

rule_ktxtests_gyp_appfwSDL_target_vert2spirv_outputs := \
	$(builddir)/shaders/$(notdir $<).spv

### Finished generating for rule: ktxtests_gyp_appfwSDL_target_vert2spirv

### Finished generating for all rules

DEFS_Debug := \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pedantic \
	-Og \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=c++11

INCS_Debug := \
	-I$(srcdir)/tests/loadtests/appfwSDL \
	-I$(srcdir)/tests/loadtests/appfwSDL/VulkanAppSDL \
	-I$(srcdir)/other_include \
	-I$(VULKAN_SDK)/include

DEFS_Release := \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-pedantic \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=c++11

INCS_Release := \
	-I$(srcdir)/tests/loadtests/appfwSDL \
	-I$(srcdir)/tests/loadtests/appfwSDL/VulkanAppSDL \
	-I$(srcdir)/other_include \
	-I$(VULKAN_SDK)/include

OBJS := \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/main.o \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/AppBaseSDL.o \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/GLAppSDL.o \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/VulkanAppSDL/VulkanAppSDL.o \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/VulkanAppSDL/VulkanContext.o \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/VulkanAppSDL/VulkanSwapchain.o \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/VulkanAppSDL/vulkandebug.o \
	$(obj).target/$(TARGET)/tests/loadtests/appfwSDL/VulkanAppSDL/vulkantools.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/libsdl.stamp $(obj).target/vulkan_headers.stamp

# Make sure our actions/rules run before any of us.
$(OBJS): | $(rule_ktxtests_gyp_appfwSDL_target_frag2spirv_outputs) $(rule_ktxtests_gyp_appfwSDL_target_vert2spirv_outputs)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(obj).target/libappfwSDL.a: | $(rule_ktxtests_gyp_appfwSDL_target_frag2spirv_outputs) $(rule_ktxtests_gyp_appfwSDL_target_vert2spirv_outputs)

# Preserve order dependency of special output on deps.
$(rule_ktxtests_gyp_appfwSDL_target_frag2spirv_outputs) $(rule_ktxtests_gyp_appfwSDL_target_vert2spirv_outputs): | $(obj).target/libsdl.stamp $(obj).target/vulkan_headers.stamp

LDFLAGS_Debug := \
	-g

LDFLAGS_Release :=

LIBS :=

$(obj).target/libappfwSDL.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libappfwSDL.a: LIBS := $(LIBS)
$(obj).target/libappfwSDL.a: TOOLSET := $(TOOLSET)
$(obj).target/libappfwSDL.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/libappfwSDL.a
# Add target alias
.PHONY: appfwSDL
appfwSDL: $(obj).target/libappfwSDL.a

# Add target alias to "all" target.
.PHONY: all
all: appfwSDL

