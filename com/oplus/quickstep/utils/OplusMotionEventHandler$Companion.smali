.class public final Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/OplusMotionEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateTiltAngle(DDDD)D
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 p0, 0xb4

    int-to-double v0, p0

    sub-double/2addr p1, p5

    sub-double/2addr p3, p7

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    const-wide p2, 0x400921fb54442d18L  # Math.PI

    div-double/2addr p0, p2

    return-wide p0
.end method
