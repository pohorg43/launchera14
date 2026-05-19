.class public final Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion$getScrimProgressWithChannel$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;->getScrimProgressWithChannel(I)Landroid/util/FloatProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/graphics/OplusOverviewScrim;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $channel:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion$getScrimProgressWithChannel$1;->$channel:I

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/graphics/OplusOverviewScrim;)Ljava/lang/Float;
    .registers 2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher3/graphics/Scrim;->getScrimProgress()F

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/graphics/OplusOverviewScrim;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion$getScrimProgressWithChannel$1;->get(Lcom/android/launcher3/graphics/OplusOverviewScrim;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/launcher3/graphics/OplusOverviewScrim;F)V
    .registers 3

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion$getScrimProgressWithChannel$1;->$channel:I

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->access$setScrimProgress(Lcom/android/launcher3/graphics/OplusOverviewScrim;FI)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/graphics/OplusOverviewScrim;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion$getScrimProgressWithChannel$1;->setValue(Lcom/android/launcher3/graphics/OplusOverviewScrim;F)V

    return-void
.end method
