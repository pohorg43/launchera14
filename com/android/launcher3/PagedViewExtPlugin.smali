.class public final Lcom/android/launcher3/PagedViewExtPlugin;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLING_THRESHOLD_VELOCITY:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/launcher3/PagedViewExtPlugin;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/PagedViewExtPlugin;

    invoke-direct {v0}, Lcom/android/launcher3/PagedViewExtPlugin;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedViewExtPlugin;->INSTANCE:Lcom/android/launcher3/PagedViewExtPlugin;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x8c

    goto :goto_12

    :cond_10
    const/16 v0, 0x1f4

    :goto_12
    sput v0, Lcom/android/launcher3/PagedViewExtPlugin;->FLING_THRESHOLD_VELOCITY:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
