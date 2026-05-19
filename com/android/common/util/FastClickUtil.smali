.class public final Lcom/android/common/util/FastClickUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FAST_CLICK_THRESHOLD:I = 0x1f4

.field public static final INSTANCE:Lcom/android/common/util/FastClickUtil;

.field private static mLastClickTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/FastClickUtil;

    invoke-direct {v0}, Lcom/android/common/util/FastClickUtil;-><init>()V

    sput-object v0, Lcom/android/common/util/FastClickUtil;->INSTANCE:Lcom/android/common/util/FastClickUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isFastClick()Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/common/util/FastClickUtil;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v4, :cond_18

    const-wide/16 v7, 0x1f4

    cmp-long v2, v2, v7

    if-gez v2, :cond_18

    move v2, v5

    goto :goto_19

    :cond_18
    move v2, v6

    :goto_19
    if-eqz v2, :cond_1c

    goto :goto_1f

    :cond_1c
    sput-wide v0, Lcom/android/common/util/FastClickUtil;->mLastClickTime:J

    move v5, v6

    :goto_1f
    return v5
.end method
