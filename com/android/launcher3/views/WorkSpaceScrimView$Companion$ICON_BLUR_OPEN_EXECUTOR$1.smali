.class final Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/WorkSpaceScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;

    invoke-direct {v0}, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;->INSTANCE:Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(F)Ljava/lang/Float;
    .registers 2

    const p0, 0x3ca3d70a  # 0.02f

    sub-float/2addr p1, p0

    const p0, 0x3f7ae148  # 0.98f

    div-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/WorkSpaceScrimView$Companion$ICON_BLUR_OPEN_EXECUTOR$1;->invoke(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
