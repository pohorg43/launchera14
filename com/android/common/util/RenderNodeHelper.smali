.class public final Lcom/android/common/util/RenderNodeHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRenderNodeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNodeHelper.kt\ncom/android/common/util/RenderNodeHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/RenderNodeHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/RenderNodeHelper;

    invoke-direct {v0}, Lcom/android/common/util/RenderNodeHelper;-><init>()V

    sput-object v0, Lcom/android/common/util/RenderNodeHelper;->INSTANCE:Lcom/android/common/util/RenderNodeHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)Landroid/graphics/Canvas;
    .registers 4

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    if-eqz p0, :cond_27

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-virtual {p3}, Landroid/graphics/RenderNode;->clearStretch()Z

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    const-string/jumbo p0, "{\n            renderNode…h, view.height)\n        }"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_26
    return-object p1

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "canvas, renderNode and view must not be empty!!!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final endRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)V
    .registers 5

    const-string/jumbo p0, "view"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_d

    if-eqz p3, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, p0

    :goto_e
    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p3}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p3, p0, p0, v0, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-virtual {p3}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_2d
    return-void

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "canvas, renderNode and view must not be empty!!!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
