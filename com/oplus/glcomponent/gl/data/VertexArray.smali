.class public final Lcom/oplus/glcomponent/gl/data/VertexArray;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0017\u0010\u0018J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J&\u0010\r\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0002J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\b\u0010\u0012\u001a\u00020\u0007H\u0016R\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014¨\u0006\u0019"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/data/VertexArray;",
        "Lcom/oplus/glcomponent/gl/utils/Disposable;",
        "",
        "offset",
        "size",
        "Ljava/nio/Buffer;",
        "data",
        "Lh4/z;",
        "updateData",
        "attrLocation",
        "componentCount",
        "vertexOffset",
        "stride",
        "setAttribute",
        "location",
        "disableVertexAttribute",
        "beforeDraw",
        "afterDraw",
        "dispose",
        "mVertexArrayId",
        "I",
        "mVertexBufferId",
        "buffer",
        "<init>",
        "(ILjava/nio/Buffer;)V",
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
.field private final mVertexArrayId:I

.field private final mVertexBufferId:I


# direct methods
.method public constructor <init>(ILjava/nio/Buffer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    if-nez v0, :cond_18

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p2, "can not create array objects"

    invoke-virtual {p1, p2}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    goto :goto_3a

    :cond_18
    sget-object v0, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/utils/GLTool;->glGenBuffer()I

    move-result v0

    if-nez v0, :cond_28

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p2, "can not create vertex buffer objects"

    invoke-virtual {p1, p2}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    goto :goto_39

    :cond_28
    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x4

    const v3, 0x88e4

    invoke-static {v1, p1, p2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :goto_39
    move v2, v0

    :goto_3a
    iput v2, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4b

    goto :goto_54

    :cond_4b
    const-string p2, "create vertexArray error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/utils/Debugger;->printTrace(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method


# virtual methods
.method public final afterDraw()V
    .registers 1

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final beforeDraw()V
    .registers 1

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    invoke-static {p0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final disableVertexAttribute(I)V
    .registers 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public dispose()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    new-array v1, v0, [I

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    aput p0, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    return-void
.end method

.method public final setAttribute(IIII)V
    .registers 12

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexArrayId:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    const v0, 0x8892

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    mul-int/lit8 v5, p4, 0x4

    mul-int/lit8 v6, p3, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {p0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final updateData(IILjava/nio/Buffer;)V
    .registers 5

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/VertexArray;->mVertexBufferId:I

    const v0, 0x8892

    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x4

    mul-int/lit8 p2, p2, 0x4

    const/16 p0, 0xa

    invoke-static {v0, p1, p2, p0}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.nio.ByteBuffer"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    check-cast p3, Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    return-void
.end method
