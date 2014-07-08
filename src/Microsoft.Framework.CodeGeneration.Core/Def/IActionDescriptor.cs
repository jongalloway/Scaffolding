﻿// Copyright (c) Microsoft Open Technologies, Inc. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using System;
using System.Collections.Generic;
using System.Reflection;

namespace Microsoft.Framework.CodeGeneration
{
    public interface IActionDescriptor
    {
        ICodeGeneratorDescriptor Generator { get; }

        Type ActionModel { get; }

        MethodInfo ActionMethod { get; }

        List<ParameterDescriptor> Parameters { get; }
    }
}