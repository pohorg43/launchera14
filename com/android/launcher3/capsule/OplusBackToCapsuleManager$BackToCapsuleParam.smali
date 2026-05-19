.class public final Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackToCapsuleParam"
.end annotation


# instance fields
.field private final capsulePos:Landroid/graphics/RectF;

.field private final capsuleSurfaceCtl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/view/SurfaceControl;)V
    .registers 4

    const-string v0, "capsulePos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capsuleSurfaceCtl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;Landroid/graphics/RectF;Landroid/view/SurfaceControl;ILjava/lang/Object;)Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->copy(Landroid/graphics/RectF;Landroid/view/SurfaceControl;)Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component2()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final copy(Landroid/graphics/RectF;Landroid/view/SurfaceControl;)Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;
    .registers 3

    const-string p0, "capsulePos"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "capsuleSurfaceCtl"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;-><init>(Landroid/graphics/RectF;Landroid/view/SurfaceControl;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    iget-object v1, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    iget-object p1, p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getCapsulePos()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getCapsuleSurfaceCtl()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "BackToCapsuleParam(capsulePos="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsulePos:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capsuleSurfaceCtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;->capsuleSurfaceCtl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
