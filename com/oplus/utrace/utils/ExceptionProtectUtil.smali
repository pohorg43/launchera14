.class public final Lcom/oplus/utrace/utils/ExceptionProtectUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/utils/ExceptionProtectUtil;

.field private static final QUERY_INTERVAL:J = 0xea60L

.field private static isTesting:Z

.field private static mContext:Landroid/content/Context;

.field private static volatile queryTime:J

.field private static volatile userExperienceProgram:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/utils/ExceptionProtectUtil;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/ExceptionProtectUtil;-><init>()V

    sput-object v0, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->INSTANCE:Lcom/oplus/utrace/utils/ExceptionProtectUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkUserSwitch()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->userExperienceProgram()Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->isTesting:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static synthetic isTesting$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private static final isUserExperienceToggleOn()Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_7

    :goto_5
    move-object v1, v0

    goto :goto_1e

    :cond_7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    const-string v2, "oplus_customize_cta_user_experience"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_1e
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "UTrace.Lib.ProtectUtil"

    if-nez v2, :cond_27

    goto :goto_36

    :cond_27
    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isUserExperienceToggleOn Exception: "

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v2}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_36
    instance-of v2, v1, Lh4/k$a;

    if-eqz v2, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object v0, v1

    :goto_3c
    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, "isUserExperienceToggleOn result="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_4d

    goto :goto_54

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_54

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v1, 0x0

    :goto_55
    return v1
.end method

.method public static final setContext(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static final userExperienceProgram()Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->queryTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    invoke-static {}, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->isUserExperienceToggleOn()Z

    move-result v2

    sput-boolean v2, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->userExperienceProgram:Z

    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-boolean v3, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->userExperienceProgram:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "userExperienceProgram: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTrace.Lib.ProtectUtil"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v0, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->queryTime:J

    :cond_2a
    sget-boolean v0, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->userExperienceProgram:Z

    return v0
.end method


# virtual methods
.method public final isTesting()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->isTesting:Z

    return p0
.end method

.method public final setTesting(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->isTesting:Z

    return-void
.end method
