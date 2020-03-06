# Autogenerated wrapper script for SARSOP_jll for x86_64-linux-gnu-cxx11
export polgraph, pomdpsim, pomdpeval, pomdpconvert, pomdpsol

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `polgraph`
const polgraph_splitpath = ["bin", "polgraph"]

# This will be filled out by __init__() for all products, as it must be done at runtime
polgraph_path = ""

# polgraph-specific global declaration
function polgraph(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(polgraph_path)
    end
end


# Relative path to `pomdpsim`
const pomdpsim_splitpath = ["bin", "pomdpsim"]

# This will be filled out by __init__() for all products, as it must be done at runtime
pomdpsim_path = ""

# pomdpsim-specific global declaration
function pomdpsim(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(pomdpsim_path)
    end
end


# Relative path to `pomdpeval`
const pomdpeval_splitpath = ["bin", "pomdpeval"]

# This will be filled out by __init__() for all products, as it must be done at runtime
pomdpeval_path = ""

# pomdpeval-specific global declaration
function pomdpeval(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(pomdpeval_path)
    end
end


# Relative path to `pomdpconvert`
const pomdpconvert_splitpath = ["bin", "pomdpconvert"]

# This will be filled out by __init__() for all products, as it must be done at runtime
pomdpconvert_path = ""

# pomdpconvert-specific global declaration
function pomdpconvert(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(pomdpconvert_path)
    end
end


# Relative path to `pomdpsol`
const pomdpsol_splitpath = ["bin", "pomdpsol"]

# This will be filled out by __init__() for all products, as it must be done at runtime
pomdpsol_path = ""

# pomdpsol-specific global declaration
function pomdpsol(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(pomdpsol_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SARSOP")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global polgraph_path = normpath(joinpath(artifact_dir, polgraph_splitpath...))

    push!(PATH_list, dirname(polgraph_path))
    global pomdpsim_path = normpath(joinpath(artifact_dir, pomdpsim_splitpath...))

    push!(PATH_list, dirname(pomdpsim_path))
    global pomdpeval_path = normpath(joinpath(artifact_dir, pomdpeval_splitpath...))

    push!(PATH_list, dirname(pomdpeval_path))
    global pomdpconvert_path = normpath(joinpath(artifact_dir, pomdpconvert_splitpath...))

    push!(PATH_list, dirname(pomdpconvert_path))
    global pomdpsol_path = normpath(joinpath(artifact_dir, pomdpsol_splitpath...))

    push!(PATH_list, dirname(pomdpsol_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

