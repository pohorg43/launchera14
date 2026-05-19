.class public Lcom/oplus/glcomponent/gl/objects/Rect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/glcomponent/gl/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/glcomponent/gl/objects/Rect$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014B;\b\u0016\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u0013\u0010\u001eJ\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J&\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\b\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006 "
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/objects/Rect;",
        "Lcom/oplus/glcomponent/gl/utils/Disposable;",
        "",
        "positionLocation",
        "textureCoordLocation",
        "Lh4/z;",
        "bindAttribute",
        "attributeLocation",
        "componentCount",
        "offset",
        "totalComponent",
        "unbindAttribute",
        "draw",
        "dispose",
        "Lcom/oplus/glcomponent/gl/data/VertexArray;",
        "mVertexArray",
        "Lcom/oplus/glcomponent/gl/data/VertexArray;",
        "",
        "array",
        "<init>",
        "([F)V",
        "",
        "anti",
        "",
        "width",
        "height",
        "Lcom/oplus/glcomponent/math/Vector3;",
        "vertexOffset",
        "Lcom/oplus/glcomponent/math/Vector2;",
        "textureOffset",
        "(ZFFLcom/oplus/glcomponent/math/Vector3;Lcom/oplus/glcomponent/math/Vector2;)V",
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
.field public static final Companion:Lcom/oplus/glcomponent/gl/objects/Rect$Companion;

.field private static final POSITION_COMPONENT_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Rect"

.field private static final TEXTURE_COOR_COMPONENT_COUNT:I = 0x2

.field private static final TOTAL_COMPONENT_COUNT:I = 0x5


# instance fields
.field private mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/glcomponent/gl/objects/Rect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/glcomponent/gl/objects/Rect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/glcomponent/gl/objects/Rect;->Companion:Lcom/oplus/glcomponent/gl/objects/Rect$Companion;

    return-void
.end method

.method public constructor <init>(ZFFLcom/oplus/glcomponent/math/Vector3;Lcom/oplus/glcomponent/math/Vector2;)V
    .registers 31

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    const-string v3, "vertexOffset"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "textureOffset"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v3, 0x14

    const/4 v5, 0x2

    const/high16 v22, 0x3f800000  # 1.0f

    const/16 v23, 0x0

    if-eqz p1, :cond_cf

    new-array v3, v3, [F

    neg-float v6, v0

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v24

    add-float v24, v24, v6

    aput v24, v3, v21

    div-float v21, v1, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v24

    add-float v24, v24, v21

    aput v24, v3, v20

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v20

    aput v20, v3, v5

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v5, v5, v23

    aput v5, v3, v19

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v5, v5, v23

    aput v5, v3, v18

    div-float/2addr v0, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v5

    add-float/2addr v5, v0

    aput v5, v3, v17

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v5

    add-float v5, v5, v21

    aput v5, v3, v16

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v5

    aput v5, v3, v15

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v5, v5, v22

    aput v5, v3, v14

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v5, v5, v23

    aput v5, v3, v13

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v5

    add-float/2addr v5, v6

    aput v5, v3, v12

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v5

    add-float/2addr v5, v1

    aput v5, v3, v11

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v5

    aput v5, v3, v10

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v5, v5, v23

    aput v5, v3, v9

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v5, v5, v22

    aput v5, v3, v8

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v5

    add-float/2addr v5, v0

    const/16 v0, 0xf

    aput v5, v3, v0

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v0

    add-float/2addr v0, v1

    const/16 v1, 0x10

    aput v0, v3, v1

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v0

    const/16 v1, 0x11

    aput v0, v3, v1

    iget v0, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v0, v0, v22

    const/16 v1, 0x12

    aput v0, v3, v1

    const/16 v0, 0x13

    iget v1, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v1, v1, v22

    aput v1, v3, v0

    goto/16 :goto_166

    :cond_cf
    new-array v3, v3, [F

    neg-float v6, v0

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v24

    add-float v24, v24, v6

    aput v24, v3, v21

    div-float v21, v1, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v24

    add-float v24, v24, v21

    aput v24, v3, v20

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v20

    aput v20, v3, v5

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v5, v5, v23

    aput v5, v3, v19

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v5, v5, v22

    aput v5, v3, v18

    div-float/2addr v0, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v5

    add-float/2addr v5, v0

    aput v5, v3, v17

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v5

    add-float v5, v5, v21

    aput v5, v3, v16

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v5

    aput v5, v3, v15

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v5, v5, v22

    aput v5, v3, v14

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v5, v5, v22

    aput v5, v3, v13

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v5

    add-float/2addr v5, v6

    aput v5, v3, v12

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v5

    add-float/2addr v5, v1

    aput v5, v3, v11

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v5

    aput v5, v3, v10

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v5, v5, v23

    aput v5, v3, v9

    iget v5, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v5, v5, v23

    aput v5, v3, v8

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getX()F

    move-result v5

    add-float/2addr v5, v0

    const/16 v0, 0xf

    aput v5, v3, v0

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getY()F

    move-result v0

    add-float/2addr v0, v1

    const/16 v1, 0x10

    aput v0, v3, v1

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/glcomponent/math/Vector3;->getZ()F

    move-result v0

    const/16 v1, 0x11

    aput v0, v3, v1

    iget v0, v2, Lcom/oplus/glcomponent/math/Vector2;->x:F

    add-float v0, v0, v22

    const/16 v1, 0x12

    aput v0, v3, v1

    const/16 v0, 0x13

    iget v1, v2, Lcom/oplus/glcomponent/math/Vector2;->y:F

    add-float v1, v1, v23

    aput v1, v3, v0

    :goto_166
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oplus/glcomponent/gl/objects/Rect;-><init>([F)V

    return-void
.end method

.method public synthetic constructor <init>(ZFFLcom/oplus/glcomponent/math/Vector3;Lcom/oplus/glcomponent/math/Vector2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_5

    const/4 p1, 0x1

    :cond_5
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_b

    const/high16 p2, 0x40000000  # 2.0f

    :cond_b
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_12

    const/high16 p3, -0x40000000  # -2.0f

    :cond_12
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_1d

    new-instance p4, Lcom/oplus/glcomponent/math/Vector3;

    invoke-direct {p4, p3, p3, p3}, Lcom/oplus/glcomponent/math/Vector3;-><init>(FFF)V

    :cond_1d
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_27

    new-instance p5, Lcom/oplus/glcomponent/math/Vector2;

    invoke-direct {p5, p3, p3}, Lcom/oplus/glcomponent/math/Vector2;-><init>(FF)V

    :cond_27
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/oplus/glcomponent/gl/objects/Rect;-><init>(ZFFLcom/oplus/glcomponent/math/Vector3;Lcom/oplus/glcomponent/math/Vector2;)V

    return-void
.end method

.method public constructor <init>([F)V
    .registers 4

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    new-instance v1, Lcom/oplus/glcomponent/gl/data/VertexArray;

    array-length p1, p1

    invoke-direct {v1, p1, v0}, Lcom/oplus/glcomponent/gl/data/VertexArray;-><init>(ILjava/nio/Buffer;)V

    iput-object v1, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    return-void
.end method


# virtual methods
.method public final bindAttribute(II)V
    .registers 8

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_b

    iget-object v3, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v4, v0}, Lcom/oplus/glcomponent/gl/data/VertexArray;->setAttribute(IIII)V

    :cond_b
    if-eq p2, v2, :cond_13

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/oplus/glcomponent/gl/data/VertexArray;->setAttribute(IIII)V

    :cond_13
    return-void
.end method

.method public final bindAttribute(IIII)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/glcomponent/gl/data/VertexArray;->setAttribute(IIII)V

    return-void
.end method

.method public dispose()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/data/VertexArray;->dispose()V

    return-void
.end method

.method public draw()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    invoke-virtual {v0}, Lcom/oplus/glcomponent/gl/data/VertexArray;->beforeDraw()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    invoke-virtual {p0}, Lcom/oplus/glcomponent/gl/data/VertexArray;->afterDraw()V

    return-void
.end method

.method public final unbindAttribute(II)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    iget-object v1, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    invoke-virtual {v1, p1}, Lcom/oplus/glcomponent/gl/data/VertexArray;->disableVertexAttribute(I)V

    :cond_8
    if-eq p2, v0, :cond_f

    iget-object p0, p0, Lcom/oplus/glcomponent/gl/objects/Rect;->mVertexArray:Lcom/oplus/glcomponent/gl/data/VertexArray;

    invoke-virtual {p0, p2}, Lcom/oplus/glcomponent/gl/data/VertexArray;->disableVertexAttribute(I)V

    :cond_f
    return-void
.end method
