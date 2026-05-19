.class public Lcom/oplus/glcomponent/gl/program/ShaderProgram;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/program/ShaderProgram$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018\u0000 ;2\u00020\u0001:\u0001;B\u000f\u0012\u0006\u00102\u001a\u00020\u0007¢\u0006\u0004\b3\u00104B\u0019\b\u0016\u0012\u0006\u00105\u001a\u00020\u0007\u0012\u0006\u00106\u001a\u00020\u0007¢\u0006\u0004\b3\u00107B\u0019\b\u0016\u0012\u0006\u00108\u001a\u00020\u0005\u0012\u0006\u00109\u001a\u00020\u0005¢\u0006\u0004\b3\u0010:J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J:\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J8\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H\u0016J\u0016\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0007J\u0016\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u001aJ\u001e\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u001eJ\u0016\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u001fJ&\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aJ.\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u001aJ(\u0010%\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007J\u0016\u0010\'\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\"J\u0006\u0010(\u001a\u00020\u0002R\u0019\u0010)\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R2\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070-j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007`.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R2\u00101\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070-j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007`.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00100¨\u0006<"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/program/ShaderProgram;",
        "Lcom/oplus/glcomponent/gl/utils/Disposable;",
        "Lh4/z;",
        "fetchAttributes",
        "fetchUniforms",
        "",
        "name",
        "",
        "fetchUniformLocation",
        "begin",
        "end",
        "location",
        "enableVertexAttribute",
        "disableVertexAttribute",
        "getAttributeLocation",
        "size",
        "type",
        "",
        "normalize",
        "stride",
        "Ljava/nio/Buffer;",
        "buffer",
        "setVertexAttribute",
        "offset",
        "value",
        "setUniformi",
        "",
        "setUniformf",
        "value1",
        "value2",
        "Lcom/oplus/glcomponent/math/Vector2;",
        "Lcom/oplus/glcomponent/math/Vector3;",
        "value3",
        "value4",
        "",
        "values",
        "length",
        "setUniform1fv",
        "matrix",
        "setUniformMatrix",
        "dispose",
        "program",
        "I",
        "getProgram",
        "()I",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "attributes",
        "Ljava/util/HashMap;",
        "uniforms",
        "glProgram",
        "<init>",
        "(I)V",
        "vertexResource",
        "fragmentResource",
        "(II)V",
        "vertexPath",
        "fragmentPath",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final BINORMAL_ATTRIBUTE:Ljava/lang/String; = "a_binormal"

.field public static final BONEWEIGHT_ATTRIBUTE:Ljava/lang/String; = "a_boneWeight"

.field public static final COLOR_ATTRIBUTE:Ljava/lang/String; = "a_color"

.field public static final Companion:Lcom/oplus/glcomponent/gl/program/ShaderProgram$Companion;

.field public static final NORMAL_ATTRIBUTE:Ljava/lang/String; = "a_normal"

.field public static final POSITION_ATTRIBUTE:Ljava/lang/String; = "a_position"

.field private static final TAG:Ljava/lang/String; = "ShaderProgram"

.field public static final TANGENT_ATTRIBUTE:Ljava/lang/String; = "a_tangent"

.field public static final TEXCOORD_ATTRIBUTE:Ljava/lang/String; = "a_texCoord0"


# instance fields
.field private final attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final program:I

.field private final uniforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/program/ShaderProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->Companion:Lcom/oplus/glcomponent/gl/program/ShaderProgram$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->attributes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->dispose()V

    goto :goto_20

    :cond_1a
    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->fetchAttributes()V

    invoke-direct {p0}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->fetchUniforms()V

    :goto_20
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    sget-object v0, Lcom/oplus/glcomponent/gl/utils/ShaderHelper;->INSTANCE:Lcom/oplus/glcomponent/gl/utils/ShaderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/glcomponent/gl/utils/ShaderHelper;->buildProgram(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "vertexPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/glcomponent/gl/utils/ShaderHelper;->INSTANCE:Lcom/oplus/glcomponent/gl/utils/ShaderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/glcomponent/gl/utils/ShaderHelper;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;-><init>(I)V

    return-void
.end method

.method private final fetchAttributes()V
    .registers 13

    const/4 v0, 0x1

    new-array v7, v0, [I

    new-array v8, v0, [I

    iget v1, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    const v2, 0x8b89

    const/4 v9, 0x0

    invoke-static {v1, v2, v7, v9}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v10, v7, v9

    if-lez v10, :cond_3c

    move v2, v9

    :goto_13
    add-int/lit8 v11, v2, 0x1

    aput v0, v7, v9

    aput v9, v8, v9

    iget v1, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v7

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glGetActiveAttrib(II[II[II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->attributes:Ljava/util/HashMap;

    const-string v4, "attributeName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v11, v10, :cond_3a

    goto :goto_3c

    :cond_3a
    move v2, v11

    goto :goto_13

    :cond_3c
    :goto_3c
    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->attributes:Ljava/util/HashMap;

    const-string v1, "fetchAttributes: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/glcomponent/utils/Debugger;->i(Ljava/lang/String;)V

    :cond_4f
    return-void
.end method

.method private final fetchUniformLocation(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2d

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_1b
    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_2d
    :goto_2d
    return v0
.end method

.method private final fetchUniforms()V
    .registers 13

    const/4 v0, 0x1

    new-array v7, v0, [I

    new-array v8, v0, [I

    iget v1, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    const v2, 0x8b86

    const/4 v9, 0x0

    invoke-static {v1, v2, v7, v9}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v10, v7, v9

    if-lez v10, :cond_3c

    move v2, v9

    :goto_13
    add-int/lit8 v11, v2, 0x1

    aput v0, v7, v9

    aput v9, v8, v9

    iget v1, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v7

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glGetActiveUniform(II[II[II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v11, v10, :cond_3a

    goto :goto_3c

    :cond_3a
    move v2, v11

    goto :goto_13

    :cond_3c
    :goto_3c
    sget-object v0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    const-string v1, "fetchUniforms: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/glcomponent/utils/Debugger;->i(Ljava/lang/String;)V

    :cond_4f
    return-void
.end method


# virtual methods
.method public final begin()V
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public disableVertexAttribute(I)V
    .registers 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public disableVertexAttribute(Ljava/lang/String;)V
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_d

    return-void

    :cond_d
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public final dispose()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public enableVertexAttribute(I)V
    .registers 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public final end()V
    .registers 1

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public final getAttributeLocation(Ljava/lang/String;)I
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->attributes:Ljava/util/HashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "attributes.getOrDefault(name, -1)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getProgram()I
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->program:I

    return p0
.end method

.method public final setUniform1fv(Ljava/lang/String;[FII)V
    .registers 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->fetchUniformLocation(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_10

    invoke-static {p0, p4, p2, p3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    goto :goto_19

    :cond_10
    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "ShaderProgram"

    const-string p2, "setUniform1fv location = -1"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public final setUniformMatrix(Ljava/lang/String;[F)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_15

    goto :goto_20

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    array-length p1, p2

    div-int/lit8 p1, p1, 0x10

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :goto_20
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;F)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_17
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;FF)V
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :goto_17
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;FFF)V
    .registers 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    :goto_17
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;FFFF)V
    .registers 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    :goto_17
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;Lcom/oplus/glcomponent/math/Vector2;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_15

    goto :goto_20

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p1, p2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    iget p2, p2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :goto_20
    return-void
.end method

.method public final setUniformf(Ljava/lang/String;Lcom/oplus/glcomponent/math/Vector3;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_15

    goto :goto_28

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result p1

    invoke-virtual {p2}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result p2

    invoke-static {p0, p1, v0, p2}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    :goto_28
    return-void
.end method

.method public final setUniformi(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/program/ShaderProgram;->uniforms:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_17
    return-void
.end method

.method public setVertexAttribute(IIIZII)V
    .registers 7

    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public setVertexAttribute(IIIZILjava/nio/Buffer;)V
    .registers 7

    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method
