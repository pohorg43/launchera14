.class public final Lcom/oplus/glcomponent/gl/data/IndexVertexArray;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ.\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ&\u0010\u0010\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\nJ\u0006\u0010\u0014\u001a\u00020\nJ\b\u0010\u0015\u001a\u00020\nH\u0016R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017¨\u0006\u001f"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/data/IndexVertexArray;",
        "Lcom/oplus/glcomponent/gl/utils/Disposable;",
        "",
        "offset",
        "size",
        "",
        "data",
        "indexSize",
        "",
        "index",
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
        "mIndexBufferId",
        "Ljava/nio/Buffer;",
        "buffer",
        "indexBuffer",
        "<init>",
        "(ILjava/nio/Buffer;ILjava/nio/Buffer;)V",
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
.field private final mIndexBufferId:I

.field private final mVertexArrayId:I

.field private final mVertexBufferId:I


# direct methods
.method public constructor <init>(ILjava/nio/Buffer;ILjava/nio/Buffer;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexArrayId:I

    const-string v1, "can not create vertex buffer objects"

    const v3, 0x88e8

    const-string v4, "can not create array objects"

    if-nez v0, :cond_1e

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1, v4}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    move v5, v2

    goto :goto_3a

    :cond_1e
    sget-object v5, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {v5}, Lcom/oplus/glcomponent/utils/GLTool;->glGenBuffer()I

    move-result v5

    if-nez v5, :cond_2c

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1, v1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    goto :goto_3a

    :cond_2c
    const v6, 0x8892

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x4

    invoke-static {v6, p1, p2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :goto_3a
    iput v5, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexBufferId:I

    if-nez v0, :cond_44

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p1, v4}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    goto :goto_61

    :cond_44
    sget-object p1, Lcom/oplus/glcomponent/utils/GLTool;->INSTANCE:Lcom/oplus/glcomponent/utils/GLTool;

    invoke-virtual {p1}, Lcom/oplus/glcomponent/utils/GLTool;->glGenBuffer()I

    move-result p1

    if-nez p1, :cond_52

    sget-object p2, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p2, v1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;)V

    goto :goto_60

    :cond_52
    const p2, 0x8893

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p2, p3, p4, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :goto_60
    move v2, p1

    :goto_61
    iput v2, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mIndexBufferId:I

    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->isDevelopMode()Z

    move-result p1

    if-eqz p1, :cond_7b

    invoke-virtual {p0}, Lcom/oplus/glcomponent/utils/Debugger;->checkGlError()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_72

    goto :goto_7b

    :cond_72
    const-string p2, "create vertexArray error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/glcomponent/utils/Debugger;->printTrace(Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public final afterDraw()V
    .registers 2

    const p0, 0x8893

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public final beforeDraw()V
    .registers 2

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexArrayId:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mIndexBufferId:I

    const v0, 0x8893

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

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

    iget v2, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexBufferId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    new-array v1, v0, [I

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexArrayId:I

    aput p0, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    return-void
.end method

.method public final setAttribute(IIII)V
    .registers 12

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexArrayId:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexBufferId:I

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

.method public final updateData(II[FI[S)V
    .registers 10

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mVertexBufferId:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 p2, p2, 0x4

    const/16 v2, 0xa

    invoke-static {v1, v0, p2, v2}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_33
    invoke-static {v1}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget p0, p0, Lcom/oplus/glcomponent/gl/data/IndexVertexArray;->mIndexBufferId:I

    const p2, 0x8893

    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p4, p4, 0x2

    invoke-static {p2, p1, p4, v2}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object p0

    if-eqz p0, :cond_5f

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5f
    invoke-static {p2}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method
