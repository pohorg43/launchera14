.class public final Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$PanelType;,
        Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SelectedType;,
        Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;
    }
.end annotation


# static fields
.field public static final ACTION_ENTER_ONEPUTT_GESTURE:I = 0x2af8

.field public static final ACTION_ENTER_RECENTS:I = 0x2af9

.field private static final CLASS_OPLUS_PUTT_MANAGER:Ljava/lang/String; = "com.oplus.putt.OplusPuttManager"

.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;

.field public static final KEY_TASK_ID:Ljava/lang/String; = "taskId"

.field private static final METHOD_GETINSTANCE:Ljava/lang/String; = "getInstance"

.field private static final METHOD_START_ONE_PUTT:Ljava/lang/String; = "startOnePutt"

.field private static final METHOD_SUPPORT_PUTT:Ljava/lang/String; = "isSupportPuttMode"

.field public static final REQUEST_CODE_FOR_ONE_PUTT_PERMISSION:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "OnePuttUtils"

.field private static final TITLE_PERMISSION_DIALOG:Ljava/lang/String; = "statementTitle"

.field public static final TYPE_DOUBLE_OPTIONS:I = 0x2

.field public static final TYPE_FLOAT_WINDOW:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_ONE_PUTT:I = 0x2

.field public static final TYPE_SINGLE_OPTIONS:I = 0x1

.field private static final TYPE_SUPPORT_ONE_PUTT:I = 0x1

.field private static final classObj:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static isSupportPuttModeMethod:Ljava/lang/reflect/Method;

.field private static oplusPuttManager:Ljava/lang/Object;

.field private static startOnePuttMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;

    invoke-direct {v1}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;-><init>()V

    sput-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;

    const-string v1, "com.oplus.putt.OplusPuttManager"

    invoke-static {v1}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->classObj:Ljava/lang/Class;

    if-eqz v1, :cond_56

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v7, Landroid/os/Bundle;

    const/4 v8, 0x2

    aput-object v7, v3, v8

    const-string v7, "startOnePutt"

    invoke-static {v1, v7, v3}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->startOnePuttMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v4, v3, v8

    aput-object v0, v3, v2

    const/4 v0, 0x4

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v3, v0

    const-string v0, "isSupportPuttMode"

    invoke-static {v1, v0, v3}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->isSupportPuttModeMethod:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Class;

    const-string v2, "getInstance"

    invoke-static {v1, v2, v0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_54
    sput-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->oplusPuttManager:Ljava/lang/Object;

    :cond_56
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->launchOnePuttPermissionDialog$lambda$11$lambda$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(IILandroid/os/Bundle;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->startOnePutt$lambda$4(IILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->launchOnePuttPermissionDialog$lambda$11$lambda$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_1c

    :cond_11
    const-string v0, "load class exception: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OnePuttUtils"

    invoke-static {p0, v0, v1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_15

    :catchall_10
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_15
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_28

    :cond_1c
    const-string p0, "getMethod exception: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "OnePuttUtils"

    invoke-static {p1, p0, p2}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_28
    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static final inSplitScreenMode(Lcom/android/launcher3/BaseActivity;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    return p0

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_33

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inSplitScreenMode failed to get dock side e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OnePuttUtils"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    const/4 p0, 0x0

    return p0
.end method

.method public static final isOnePuttSupported(Lcom/android/launcher3/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callPkg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->inSplitScreenMode(Lcom/android/launcher3/BaseActivity;)Z

    move-result p0

    if-nez p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public static final isSupportedApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 21
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "baseComponent"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callPkg"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_29

    return v7

    :cond_29
    const/4 v0, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x1

    :try_start_2e
    sget-object v12, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->isSupportPuttModeMethod:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_51

    sget-object v13, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->oplusPuttManager:Ljava/lang/Object;

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    aput-object v1, v14, v11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    aput-object v3, v14, v8

    aput-object v4, v14, v0

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    instance-of v8, v0, Ljava/lang/Boolean;

    if-eqz v8, :cond_59

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_60
    .catchall {:try_start_2e .. :try_end_60} :catchall_65

    :try_start_60
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_63

    goto :goto_6b

    :catchall_63
    move-exception v0

    goto :goto_67

    :catchall_65
    move-exception v0

    move v8, v7

    :goto_67
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_6b
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v12, "isSupportedApp: exception= "

    const-string v13, "OnePuttUtils"

    if-nez v0, :cond_76

    goto :goto_7d

    :cond_76
    invoke-static {v12}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v0, v14, v13}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7d
    const-string v14, "QuickStep"

    if-nez v8, :cond_87

    const-string v0, "unsupport base component "

    invoke-static {v0, v1, v14, v13}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_87
    :try_start_87
    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->isSupportPuttModeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_ac

    sget-object v15, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->oplusPuttManager:Ljava/lang/Object;

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v10, v7

    aput-object v2, v10, v11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v9

    const/4 v7, 0x3

    aput-object v3, v10, v7

    const/4 v3, 0x4

    aput-object v4, v10, v3

    invoke-virtual {v0, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_ad

    :cond_ac
    const/4 v0, 0x0

    :goto_ad
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_b4

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    :goto_b5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_bd
    .catchall {:try_start_87 .. :try_end_bd} :catchall_be

    goto :goto_c3

    :catchall_be
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_c3
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_ca

    goto :goto_d1

    :cond_ca
    invoke-static {v12}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v3, v13}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_d1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_eb

    const-string v0, "isSupportedApp: support="

    const-string v3, ", currentUserId="

    const-string v4, ", systemUserId="

    invoke-static {v0, v8, v3, v5, v4}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", baseComponent="

    const-string v4, ", topComponent="

    invoke-static {v0, v6, v3, v1, v4}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2, v14, v13}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_eb
    return v8
.end method

.method public static final launchOnePuttPermissionDialog(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RapidReaction"

    const-string v1, "OnePuttUtils"

    const-string v2, "launchOnePuttPermissionActivity"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v1, Lcom/support/appcompat/R$style;->COUIAlertDialog_BottomWarning:I

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->b()V

    const p0, 0x7f120441

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->o(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const p0, 0x7f120428

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/c;->b:Lcom/oplus/quickstep/rapidreaction/utils/c;

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const p0, 0x7f120429

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/b;->a:Lcom/oplus/quickstep/rapidreaction/utils/b;

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final launchOnePuttPermissionDialog$lambda$11$lambda$10(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final launchOnePuttPermissionDialog$lambda$11$lambda$9(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static final showHighTemperatureToast(Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->INSTANCE:Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper;->isThermalLevelReached10()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const-string v0, "QuickStep"

    const-string v2, "OnePuttUtils"

    const-string v3, "showHighTemperatureToast: the temperature is too high, so we display a toast to inform the user that we can\'t use the external screen"

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120438

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public static final startOnePutt(IILandroid/os/Bundle;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOnePutt: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OnePuttUtils"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->oplusPuttManager:Ljava/lang/Object;

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    sget-object v0, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/launcher/sellmode/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/sellmode/a;-><init>(IILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final startOnePutt$lambda$4(IILandroid/os/Bundle;)V
    .registers 8

    const-string v0, "OnePuttUtils"

    const-string v1, "$bundle"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->startOnePuttMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2c

    const-string v2, "QuickStep"

    const-string v3, "startOnePutt: notify switch to external screen"

    invoke-static {v2, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->oplusPuttManager:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2e

    goto :goto_33

    :cond_2c
    const/4 v1, 0x0

    goto :goto_33

    :catchall_2e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_33
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3a

    goto :goto_43

    :cond_3a
    const-string p1, "startOnePutt: exception= "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v0}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_43
    return-void
.end method
