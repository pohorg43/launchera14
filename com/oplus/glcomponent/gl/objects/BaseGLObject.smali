.class public abstract Lcom/oplus/glcomponent/gl/objects/BaseGLObject;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/objects/BaseGLObject;",
        "Lcom/oplus/glcomponent/gl/utils/Disposable;",
        "Lh4/z;",
        "dispose",
        "Lcom/oplus/glcomponent/gl/program/ShaderProgram;",
        "program",
        "bindAttribute",
        "Lcom/oplus/glcomponent/gl/data/VertexArray;",
        "mVertexArray",
        "Lcom/oplus/glcomponent/gl/data/VertexArray;",
        "getMVertexArray",
        "()Lcom/oplus/glcomponent/gl/data/VertexArray;",
        "setMVertexArray",
        "(Lcom/oplus/glcomponent/gl/data/VertexArray;)V",
        "<init>",
        "()V",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindAttribute(Lcom/oplus/glcomponent/gl/program/ShaderProgram;)V
.end method

.method public dispose()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/objects/BaseGLObject;->getMVertexArray()Lcom/oplus/glcomponent/gl/data/VertexArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/data/VertexArray;->dispose()V

    return-void
.end method

.method public final getMVertexArray()Lcom/oplus/glcomponent/gl/data/VertexArray;
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/objects/BaseGLObject;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mVertexArray"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setMVertexArray(Lcom/oplus/glcomponent/gl/data/VertexArray;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/glcomponent/gl/objects/BaseGLObject;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    return-void
.end method
