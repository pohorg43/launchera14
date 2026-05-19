.class public final Lcom/oplus/quickstep/utils/OplusMotionEventHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;,
        Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;,
        Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusMotionEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusMotionEventHandler.kt\ncom/oplus/quickstep/utils/OplusMotionEventHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
    }
.end annotation


# static fields
.field private static final APPROXIMATE_LINE_DEFAULT_ACCURACY:F = 30.0f

.field public static final Companion:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;

.field private static final INVALID_VALUE:F = -1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->Companion:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;

    const-class v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-interface {v0}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-direct {v0, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;-><init>(F)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    return-void
.end method

.method public synthetic constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/high16 p1, 0x41f00000  # 30.0f

    :cond_6
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;-><init>(F)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final calculateTiltAngle(DDDD)D
    .registers 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->Companion:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;->calculateTiltAngle(DDDD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final getApproximateLineStartEndXYs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->getPointerInfoArray()Landroid/util/SparseArray;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->getActivePointerId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$SinglePointerInfo;->getApproximateLineStartEndXYs()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_1d
    return-object p0
.end method

.method public final getApproximateLineTiltAngle()Ljava/lang/Double;
    .registers 15

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->getApproximateLineStartEndXYs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    move-object p0, v2

    :goto_f
    if-eqz p0, :cond_4a

    invoke-static {p0, v1}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_4a

    array-length v0, p0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v3, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v4

    :goto_21
    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move-object p0, v2

    :goto_25
    if-eqz p0, :cond_4a

    sget-object v5, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->Companion:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;

    aget v0, p0, v4

    float-to-double v6, v0

    aget v0, p0, v1

    float-to-double v8, v0

    const/4 v0, 0x2

    aget v0, p0, v0

    float-to-double v10, v0

    const/4 v0, 0x3

    aget p0, p0, v0

    float-to-double v12, p0

    invoke-virtual/range {v5 .. v13}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;->calculateTiltAngle(DDDD)D

    move-result-wide v0

    neg-double v2, v0

    const-wide/16 v4, 0x0

    cmpg-double p0, v2, v4

    if-gez p0, :cond_46

    const/16 p0, 0x168

    int-to-double v2, p0

    sub-double/2addr v2, v0

    :cond_46
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_4a
    return-object v2
.end method

.method public final receiveEvent(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2e

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_22

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1c

    goto :goto_3e

    :cond_1c
    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {p0, v2, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->updateActionUp(ZLandroid/view/MotionEvent;)V

    goto :goto_3e

    :cond_22
    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {p0, v2, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->updateActionDown(ZLandroid/view/MotionEvent;)V

    goto :goto_3e

    :cond_28
    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->updateActionMove(Landroid/view/MotionEvent;)V

    goto :goto_3e

    :cond_2e
    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {p0, v1, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->updateActionUp(ZLandroid/view/MotionEvent;)V

    goto :goto_3e

    :cond_34
    iget-object v0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->reset()V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->record:Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;

    invoke-virtual {p0, v1, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$MotionEventInfo;->updateActionDown(ZLandroid/view/MotionEvent;)V

    :goto_3e
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_46
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_53

    sget-object p1, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "receiveEvent fail"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_53
    return-void
.end method
