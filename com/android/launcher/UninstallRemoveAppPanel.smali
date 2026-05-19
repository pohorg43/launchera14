.class public Lcom/android/launcher/UninstallRemoveAppPanel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/views/AlertPanelView$ActionCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;,
        Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;,
        Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;,
        Lcom/android/launcher/UninstallRemoveAppPanel$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUninstallRemoveAppPanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UninstallRemoveAppPanel.kt\ncom/android/launcher/UninstallRemoveAppPanel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1013:1\n1855#2,2:1014\n1855#2,2:1016\n1855#2,2:1018\n1855#2,2:1020\n1855#2:1022\n1856#2:1024\n1855#2,2:1025\n1#3:1023\n*S KotlinDebug\n*F\n+ 1 UninstallRemoveAppPanel.kt\ncom/android/launcher/UninstallRemoveAppPanel\n*L\n146#1:1014,2\n258#1:1016,2\n373#1:1018,2\n458#1:1020,2\n947#1:1022\n947#1:1024\n970#1:1025,2\n*E\n"
    }
.end annotation


# static fields
.field private static final APP_INFO_LENGTH:I = 0x258

.field public static final CLONE_APP_USERID:I = 0x3e7

.field public static final Companion:Lcom/android/launcher/UninstallRemoveAppPanel$Companion;

.field public static final FLAG_PROFILE_CLONE:I = 0x4

.field public static final FLAG_WORK:I = 0x1

.field private static final MULTI_UNINSTALL:Ljava/lang/String; = "2"

.field private static final SINGLE_UNINSTALL:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "UninstallRemoveAppPanel"


# instance fields
.field private hasDeepShortcut:Z

.field private hasGrayAutoInstallApp:Z

.field private isOnlyDeepShortcut:Z

.field private final mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/model/UninstallItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

.field private final mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

.field private mContext:Landroid/content/Context;

.field private mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private mIsclickUninstall:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRemoveShortcutIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mUninstallAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

.field private positiveBtnTxt:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/UninstallRemoveAppPanel;->Companion:Lcom/android/launcher/UninstallRemoveAppPanel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->message:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string v0, "fromContext(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    new-instance p1, Landroidx/core/view/a;

    invoke-direct {p1, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel$lambda$2(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic access$updateItemClick(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel;->updateItemClick(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel$lambda$3(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda$13(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda$13$lambda$12$lambda$10(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    return-void
.end method

.method private final detectDeepShortcutAndGrayAutoInstallApp()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget-boolean v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasDeepShortcut:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasGrayAutoInstallApp:Z

    if-eqz v2, :cond_1b

    goto :goto_6

    :cond_1b
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-boolean v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasDeepShortcut:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_46

    invoke-direct {p0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel;->isDeepShortCutOrGrayAutoInstallApp(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    move-object v2, v1

    goto :goto_3f

    :cond_3e
    move-object v2, v5

    :goto_3f
    if-eqz v2, :cond_43

    move v2, v3

    goto :goto_44

    :cond_43
    move v2, v4

    :goto_44
    iput-boolean v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasDeepShortcut:Z

    :cond_46
    iget-boolean v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasGrayAutoInstallApp:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->isGrayAutoInstallApp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_5a

    :cond_59
    move-object v1, v5

    :goto_5a
    if-eqz v1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v4

    :goto_5e
    iput-boolean v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasGrayAutoInstallApp:Z

    goto :goto_6

    :cond_61
    return-void
.end method

.method private final detectOnlyDeepShortcut()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasDeepShortcut:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget-boolean v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    if-nez v2, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_29

    :cond_28
    move-object v1, v3

    :goto_29
    if-eqz v1, :cond_b

    invoke-direct {p0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel;->isDeepShortCutOrGrayAutoInstallApp(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object v3, v1

    :cond_3c
    if-eqz v3, :cond_3f

    const/4 v4, 0x0

    :cond_3f
    iput-boolean v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    goto :goto_b

    :cond_42
    return-void
.end method

.method public static synthetic e(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda$13$lambda$12(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda$13$lambda$12$lambda$11(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda$9(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick$lambda$8(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks$lambda$0(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    return-void
.end method

.method private final initTitleContent()V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f120665

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.getString(R.str…_delete_panel_main_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f120487

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.getString(R.string.panel_confirm_txt)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    goto/16 :goto_320

    :cond_32
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "mContext.getString(R.string.uninstall_action)"

    const v2, 0x7f120663

    const-string v3, ""

    const-string v4, "format(format, *args)"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_f1

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v7, "mUninstallAppInfos[0]"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v7, :cond_58

    move-object v7, v3

    goto :goto_5c

    :cond_58
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5c
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v9, 0x7f12066f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mContext.getString(R.str…l_panel_single_app_title)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v5

    invoke-static {v9, v6, v8, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/launcher/UninstallRemoveAppPanel;->isMultiAppAdded(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_99

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f12066e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mContext.resources.getSt…b_title\n                )"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v7, v3, v5

    invoke-static {v3, v6, v0, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e2

    :cond_99
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_cf

    sget-object v4, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v4}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/common/util/PackageUtils;->isNeedShowUninstallReminder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_bf

    goto :goto_ca

    :cond_bf
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_ca
    invoke-static {v4, v3, v7}, Lcom/android/common/util/LauncherUtil;->getRetainInfoFromApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_dc

    :cond_cf
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120667

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_dc
    const-string/jumbo v3, "{\n                if ((n…          }\n            }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e2
    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    goto/16 :goto_320

    :cond_f1
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_13e

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v5

    :cond_100
    :goto_100
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_115

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v4}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v4

    if-eqz v4, :cond_100

    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_115
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f10000e

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0, v4, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mContext.resources.getQu…ppNum, inUninstallAppNum)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    goto/16 :goto_320

    :cond_13e
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v1, "{\n                mConte…up_message)\n            }"

    const v2, 0x7f120207

    const v7, 0x7f100004

    const-string v8, "mContext.getString(R.string.remove_action)"

    const v9, 0x7f1204f4

    const-string/jumbo v10, "{\n                mConte…          )\n            }"

    if-ne v0, v6, :cond_1da

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v11, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v11, :cond_171

    move-object v11, v3

    goto :goto_175

    :cond_171
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_175
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->isGrayAutoInstallApp()Z

    move-result v12

    if-eqz v12, :cond_17c

    goto :goto_1b1

    :cond_17c
    invoke-direct {p0, v0}, Lcom/android/launcher/UninstallRemoveAppPanel;->isDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_190

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1b1

    :cond_190
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1b1
    iput-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->message:Ljava/lang/String;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f120205

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.getString(R.str…et_one_alert_popup_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v11, v1, v5

    invoke-static {v1, v6, v0, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    goto/16 :goto_320

    :cond_1da
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_320

    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasDeepShortcut:Z

    const-string v7, "mContext.resources.getQu…ize\n                    )"

    if-eqz v0, :cond_225

    iget-boolean v11, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    if-nez v11, :cond_225

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f100007

    iget-object v12, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v13, v6, [Ljava/lang/Object;

    iget-object v14, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v5

    invoke-static {v7, v6, v0, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29c

    :cond_225
    if-eqz v0, :cond_264

    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    if-eqz v0, :cond_264

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f100008

    iget-object v12, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v13, v6, [Ljava/lang/Object;

    iget-object v14, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v5

    invoke-static {v7, v6, v0, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29c

    :cond_264
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f100005

    iget-object v12, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v13, v6, [Ljava/lang/Object;

    iget-object v14, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v5

    invoke-static {v7, v6, v0, v4}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_29c
    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_2b4

    return-void

    :cond_2b4
    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasGrayAutoInstallApp:Z

    if-eqz v0, :cond_2b9

    goto :goto_31e

    :cond_2b9
    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasDeepShortcut:Z

    if-eqz v0, :cond_2e6

    iget-boolean v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    if-nez v3, :cond_2e6

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100006

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_31e

    :cond_2e6
    if-eqz v0, :cond_2fa

    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    if-eqz v0, :cond_2fa

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_31e

    :cond_2fa
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f100004

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_31e
    iput-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->message:Ljava/lang/String;

    :cond_320
    :goto_320
    return-void
.end method

.method private final isDeepShortCut(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private final isDeepShortCutOrGrayAutoInstallApp(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isGrayAutoInstallApp()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0
.end method

.method private final isMultiAppAdded(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_29

    const-string p1, ""

    goto :goto_34

    :cond_29
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_34
    invoke-virtual {v0, p1}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return p0
.end method

.method private static final mCallBacks$lambda$0(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;->onPositiveButtonClick()V

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->startUninstallTask()V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda$13(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderLastItemShouldFade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v2, v3, :cond_2e

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v2, Lcom/android/launcher/AppPanelHelper;->INSTANCE:Lcom/android/launcher/AppPanelHelper;

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher/AppPanelHelper;->animAllAppsBubbleTextViewIconForUninstall(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/Context;)V

    goto :goto_37

    :cond_2e
    sget-object v2, Lcom/android/launcher/AppPanelHelper;->INSTANCE:Lcom/android/launcher/AppPanelHelper;

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher/AppPanelHelper;->animAppIconBubbleTextViewForUninstall(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/Context;)V

    :goto_37
    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/common/debug/c;

    invoke-direct {v3, v0, p0, p1, v1}, Lcom/android/common/debug/c;-><init>(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final onPositiveButtonClick$lambda$13$lambda$12(Ljava/util/ArrayList;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 16

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$folderLastItemShouldFade"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isDrawer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    const-wide/16 v3, 0x12c

    if-ge v2, v0, :cond_9c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "list[i]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/OplusBubbleTextView;

    const-string/jumbo v6, "onPositiveButtonClick -- item = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnInstallApp"

    const-string v8, "UninstallRemoveAppPanel"

    invoke-static {v7, v8, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x1

    if-ne v2, v6, :cond_4a

    move v6, v7

    goto :goto_4b

    :cond_4a
    move v6, v1

    :goto_4b
    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v9, :cond_65

    iget-object v10, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v10}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v10

    move-object v11, v8

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher/download/DownloadAppsManager;->checkUninstallState(Ljava/lang/String;)Z

    move-result v10

    goto :goto_66

    :cond_65
    move v10, v7

    :goto_66
    if-eqz v10, :cond_84

    iget-boolean v10, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v10, :cond_84

    if-eqz v9, :cond_77

    iget-boolean v9, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v9, :cond_77

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {p1, v8}, Lcom/android/launcher/UninstallRemoveAppPanel;->refreshUninstalledSearchAppInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_77
    iget-object v5, v5, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    if-eqz v6, :cond_7e

    iget-object v8, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    goto :goto_7f

    :cond_7e
    const/4 v8, 0x0

    :goto_7f
    invoke-interface {v5, v1, v1, v7, v8}, Lcom/android/launcher3/IBubbleTextViewExt;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    move-result v5

    goto :goto_85

    :cond_84
    move v5, v1

    :goto_85
    if-eqz v6, :cond_99

    if-nez v5, :cond_99

    iget-object v5, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Landroidx/core/widget/a;

    invoke-direct {v6, p1}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_9c
    if-nez v0, :cond_b6

    iget-object p0, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_b6

    iget-object p0, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroidx/core/widget/b;

    invoke-direct {p2, p1}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;)V

    invoke-virtual {p0, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b6
    return-void
.end method

.method private static final onPositiveButtonClick$lambda$13$lambda$12$lambda$10(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;->onAnimationEnd()V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda$13$lambda$12$lambda$11(Lcom/android/launcher/UninstallRemoveAppPanel;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mCallBacks:Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;->onAnimationEnd()V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda$8(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shortcutIconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shortcutInfos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final onPositiveButtonClick$lambda$9(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$shortcutIconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    return-void
.end method

.method private final setShortcutTitleAndMessage(I)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->hasDeepShortcut:Z

    const-string v1, "mContext.resources.getQu…tCutNum\n                )"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4f

    iget-boolean v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    if-nez v4, :cond_4f

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_2b

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100007

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeTitle(Ljava/lang/String;)V

    :cond_2b
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_af

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100006

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mContext.resources.getQu…Num\n                    )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeMessage(Ljava/lang/String;)V

    goto :goto_af

    :cond_4f
    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->isOnlyDeepShortcut:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_af

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f100008

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p0, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeTitle(Ljava/lang/String;)V

    goto :goto_af

    :cond_75
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_96

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100005

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mContext.resources.getQu…um, uninstallShortCutNum)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeTitle(Ljava/lang/String;)V

    :cond_96
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_af

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100004

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mContext.resources.getQu…    uninstallShortCutNum)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeMessage(Ljava/lang/String;)V

    :cond_af
    :goto_af
    return-void
.end method

.method private final showConfirmPanel()V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string p0, "UninstallRemoveAppPanel"

    const-string/jumbo v0, "the panel is showing!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mIsclickUninstall:Z

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->detectDeepShortcutAndGrayAutoInstallApp()V

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->detectOnlyDeepShortcut()V

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->initTitleContent()V

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x4

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v10, Lcom/android/launcher/n0;

    invoke-direct {v10, v2, p0, v1}, Lcom/android/launcher/n0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;)V

    new-instance v9, Lcom/android/launcher/o0;

    invoke-direct {v9, v2, p0, v1}, Lcom/android/launcher/o0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;)V

    new-instance v1, Lcom/android/launcher3/popup/OplusAlertPopup;

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/popup/OplusAlertPopup;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "mLauncher.resources.getS…string.alert_hide_cancel)"

    const v3, 0x7f1200c2

    const/4 v11, 0x1

    if-ne v1, v11, :cond_6b

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v1, :cond_af

    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->message:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/popup/OplusAlertPopup;->createMultiMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_af

    :cond_6b
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7d

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7d

    move v1, v11

    goto :goto_7e

    :cond_7d
    move v1, v0

    :goto_7e
    iget-object v4, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v4, :cond_af

    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->message:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->positiveBtnTxt:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v12, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    new-instance v1, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2$1;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/UninstallRemoveAppPanel$showConfirmPanel$2$1;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->setOnItemClickLitener(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$OnItemClickLitener;)V

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/popup/OplusAlertPopup;->createMultiChoiceBottomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/BaseAdapter;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_af
    :goto_af
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v3}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_ce
    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_d6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_d6
    if-le v0, v11, :cond_db

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->updateConfirmBtnStates()V

    :cond_db
    return-void
.end method

.method private static final showConfirmPanel$lambda$2(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;I)V
    .registers 6

    const-string v0, "$clickPositiveBtn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lastOnClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1a

    const/4 p3, 0x1

    iput-boolean p3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->onPositiveButtonClick()V

    goto :goto_20

    :cond_1a
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->onNegativeButtonClick()V

    :goto_20
    iput p4, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method

.method private static final showConfirmPanel$lambda$3(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;)V
    .registers 4

    const-string p3, "$clickPositiveBtn"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$lastOnClickAction"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_29

    iget-object p0, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object p3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_29

    iget-object p0, p1, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_29
    iget p0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 p2, 0x4

    if-ne p0, p2, :cond_31

    invoke-virtual {p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->onDialogOutsideClick()V

    :cond_31
    return-void
.end method

.method private final startUninstallTask()V
    .registers 5

    const-string v0, "UnInstallApp"

    const-string v1, "UninstallRemoveAppPanel"

    const-string/jumbo v2, "onPositiveButtonClick -- uninstallTask: "

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object p0, Lcom/android/common/util/SoundPlayerUtils;->INSTANCE:Lcom/android/common/util/SoundPlayerUtils;

    invoke-virtual {p0}, Lcom/android/common/util/SoundPlayerUtils;->playDeleteSound()V

    return-void
.end method

.method private final updateConfirmBtnStates()V
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v7

    if-nez v7, :cond_20

    return-void

    :cond_20
    invoke-virtual {v7}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    :cond_2a
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-eqz v10, :cond_43

    invoke-virtual {v10}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v12

    goto :goto_44

    :cond_43
    move-object v12, v8

    :goto_44
    const-string/jumbo v13, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget v12, v12, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v11, v12, :cond_2a

    move-object v9, v10

    goto :goto_2a

    :cond_52
    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getViewType()I

    move-result v7

    if-nez v7, :cond_a3

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7, v6}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->isFamilySpaceDefendedPackage(Landroid/content/Context;Lcom/android/launcher/model/UninstallItemInfoWithIcon;)Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v8

    :cond_6a
    iput-object v8, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    :cond_6c
    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v7

    if-eqz v7, :cond_8a

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_87

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_8a
    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9f
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_a3
    invoke-virtual {v6}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result v6

    if-eqz v6, :cond_bb

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-static {v6, v9}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b8

    if-eqz v9, :cond_b8

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :cond_bb
    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-static {v6, v9}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    if-eqz v9, :cond_ca

    iget-object v6, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_ca
    :goto_ca
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    :cond_ce
    add-int v0, v2, v3

    const-string v6, "mContext.resources.getQu…lAppNum, uninstallAppNum)"

    const v7, 0x7f10000e

    const-string v8, "mContext.resources.getSt…_delete_panel_main_title)"

    const v9, 0x7f120665

    const/4 v10, 0x1

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_e4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/OplusAlertPopup;->changesPositiveButtonState(Z)V

    :cond_e4
    if-eqz v4, :cond_106

    if-nez v5, :cond_106

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_175

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v7, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeTitle(Ljava/lang/String;)V

    goto/16 :goto_175

    :cond_106
    if-nez v4, :cond_10e

    if-eqz v5, :cond_10e

    invoke-direct {p0, v3}, Lcom/android/launcher/UninstallRemoveAppPanel;->setShortcutTitleAndMessage(I)V

    goto :goto_175

    :cond_10e
    if-eqz v4, :cond_175

    if-eqz v5, :cond_175

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_175

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeTitle(Ljava/lang/String;)V

    goto :goto_175

    :cond_127
    if-nez v2, :cond_134

    invoke-direct {p0, v3}, Lcom/android/launcher/UninstallRemoveAppPanel;->setShortcutTitleAndMessage(I)V

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz p0, :cond_175

    invoke-virtual {p0, v10}, Lcom/android/launcher3/popup/OplusAlertPopup;->changesPositiveButtonState(Z)V

    goto :goto_175

    :cond_134
    if-nez v3, :cond_15a

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_152

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v7, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeTitle(Ljava/lang/String;)V

    :cond_152
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz p0, :cond_175

    invoke-virtual {p0, v10}, Lcom/android/launcher3/popup/OplusAlertPopup;->changesPositiveButtonState(Z)V

    goto :goto_175

    :cond_15a
    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz v0, :cond_16e

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/OplusAlertPopup;->changeTitle(Ljava/lang/String;)V

    :cond_16e
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->oplusAlertPopup:Lcom/android/launcher3/popup/OplusAlertPopup;

    if-eqz p0, :cond_175

    invoke-virtual {p0, v10}, Lcom/android/launcher3/popup/OplusAlertPopup;->changesPositiveButtonState(Z)V

    :cond_175
    :goto_175
    return-void
.end method

.method private final updateItemClick(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {p2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getSelectFlag()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->setSelectFlag(Z)V

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->updateConfirmBtnStates()V

    return-void
.end method


# virtual methods
.method public dialogDelayCloseTime()I
    .registers 1

    const/16 p0, 0x1c2

    return p0
.end method

.method public getDialogMarginBottomHeight()I
    .registers 10

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/common/config/ScreenInfo$Companion;->isNarBarShowingInNavMode(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_14

    const v3, 0x7f07070a

    goto :goto_17

    :cond_14
    const v3, 0x7f070708

    :goto_17
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    const-string v4, "UninstallRemoveAppPanel"

    if-nez v3, :cond_2d

    const-string p0, "getDialogMarginBottomHeight, dragLayer is null!"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v2, v2, 0x2

    return v2

    :cond_2d
    invoke-virtual {v3}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_3b

    const-string p0, "getDialogMarginBottomHeight, dragLayerInset is null!"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v2, v2, 0x2

    return v2

    :cond_3b
    iget-object v5, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v1, :cond_5e

    if-eqz v5, :cond_5e

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-nez v7, :cond_5e

    iget-object v7, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-nez v7, :cond_5e

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v7, 0x1

    invoke-virtual {v0, p0, v7}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_5f

    :cond_5e
    move p0, v6

    :goto_5f
    const-string v0, "inMultiWindowMode = "

    const-string v7, " -- narBarShowingInNavMode = "

    const-string v8, " -- dragLayerInset = "

    invoke-static {v0, v5, v7, v1, v8}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "UnInstallApp"

    invoke-static {v7, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7b

    if-nez v5, :cond_7b

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    :cond_7b
    add-int/2addr v2, v6

    add-int/2addr v2, p0

    return v2
.end method

.method public getInterceptCloseAnimate()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public final getMButtonClickListener()Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMRemoveShortcutIconViews()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMUninstallAppInfos()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getUninstallType(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo p0, "uninstallAppInfos"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_10

    const-string p0, "2"

    goto :goto_12

    :cond_10
    const-string p0, "1"

    :goto_12
    return-object p0
.end method

.method public onDialogOutsideClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;->onDialogOutsideClick()V

    :cond_7
    return-void
.end method

.method public onNegativeButtonClick()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {v2}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    if-eqz p0, :cond_26

    invoke-interface {p0}, Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;->onNegativeButtonClick()V

    :cond_26
    return-void
.end method

.method public onPositiveButtonClick()V
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mIsclickUninstall:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mIsclickUninstall:Z

    iget-object v2, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_2a

    const-string v2, "UninstallRemoveAppPanel"

    const-string v3, "FamilySpace app uninstall: check app can be uninstall or not"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mFamilySpaceItemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v3, v1}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->startFamilySpaceVerifier(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    :cond_2a
    iget-object v2, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3b

    return-void

    :cond_3b
    iget-object v2, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_57

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_57

    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_57
    iget-object v2, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_6b
    if-ge v6, v5, :cond_d9

    iget-object v7, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "mRemoveShortcutIconViews[i]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v9, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v15, "UninstallRemoveAppPanel positiveButtonClick"

    move-object v10, v7

    move-object v11, v8

    invoke-virtual/range {v9 .. v16}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZLjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v1

    if-ne v6, v9, :cond_a2

    move v9, v1

    goto :goto_a3

    :cond_a2
    move v9, v4

    :goto_a3
    if-eqz v9, :cond_cc

    iget-boolean v9, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v9, :cond_b4

    iget-object v9, v7, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    new-instance v10, Lcom/android/launcher/p0;

    invoke-direct {v10, v0, v7, v8, v2}, Lcom/android/launcher/p0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V

    invoke-interface {v9, v4, v4, v1, v10}, Lcom/android/launcher3/IBubbleTextViewExt;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    goto :goto_d6

    :cond_b4
    iget-object v9, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v9, v7, v8, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    iget-object v7, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    iget-object v7, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->clearSelectedViews(Ljava/util/ArrayList;)V

    goto :goto_d6

    :cond_cc
    iget-object v9, v7, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    new-instance v10, Lcom/android/launcher/q0;

    invoke-direct {v10, v0, v7, v8}, Lcom/android/launcher/q0;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-interface {v9, v4, v4, v1, v10}, Lcom/android/launcher3/IBubbleTextViewExt;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    :goto_d6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    :cond_d9
    iget-object v1, v0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e9

    new-instance v1, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v1, v0, v3}, Landroidx/constraintlayout/motion/widget/c;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_e9
    return-void
.end method

.method public final refreshUninstalledSearchAppInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 9

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    const-string v0, "UninstallRemoveAppPanel"

    if-nez p0, :cond_10

    const-string p0, "launcher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    const-string v2, "UnInstallApp"

    if-nez v1, :cond_1e

    const-string p0, "getAppsView null view while uninstall app."

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    instance-of v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    if-eqz v1, :cond_2d

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    if-nez p0, :cond_36

    const-string p0, "getActiveRecyclerView null view while uninstall app."

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->getSearchResults()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsRecyclerView;->getSearchResults()Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "allAppsRecyclerView.searchResults"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8f

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_53
    if-ge v1, v2, :cond_8f

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "searchResults[index]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v4, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v4, :cond_8c

    const-string v5, "itemInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_8c

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    const/4 p0, 0x1

    iput-boolean p0, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isRemoved:Z

    return-void

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_8f
    return-void
.end method

.method public final setMButtonClickListener(Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final showConfirmPanel(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    const-string/jumbo v0, "selectedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    return-void
.end method

.method public final showConfirmPanel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V

    return-void
.end method

.method public showConfirmPanel(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;",
            "Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8f

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_48

    if-eqz p2, :cond_28

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    move v2, v0

    goto :goto_29

    :cond_28
    move v2, v1

    :goto_29
    if-eqz v2, :cond_48

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v4, "unInstallItemInfos[0]"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_48
    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4e
    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_84

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v3}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/util/PackageUtils;->isNeedShowUninstallReminder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-direct {v4, v2, v1, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_84
    iget-object v3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-direct {v4, v2, v0, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_8f
    :goto_8f
    if-eqz p2, :cond_c7

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mRemoveShortcutIconViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9c
    :goto_9c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfoWithIcon"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-direct {v3, p2, v0, v0}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_c7
    iput-object p3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mButtonClickListener:Lcom/android/launcher/UninstallRemoveAppPanel$ButtonClickListener;

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_db

    iget-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    goto :goto_dc

    :cond_db
    move-object p1, p2

    :goto_dc
    iget-object p3, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p3, p1}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->isFamilySpaceDefendedPackage(Landroid/content/Context;Lcom/android/launcher/model/UninstallItemInfoWithIcon;)Z

    move-result p3

    if-eqz p3, :cond_f3

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_ec

    invoke-virtual {p1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p2

    :cond_ec
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p2, v1}, Lcom/android/launcher/familyspace/FamilySpaceUtil;->startFamilySpaceVerifier(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    return-void

    :cond_f3
    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel()V

    return-void
.end method

.method public final startFamilySpaceUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V
    .registers 6

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startFamilySpaceUninstall: isLauncherDialogShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", itemInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnInstallApp"

    const-string v2, "UninstallRemoveAppPanel"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3a

    new-instance p2, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$UninstallTask;-><init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v1, [Ljava/lang/Void;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    invoke-virtual {p2, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_56

    :cond_3a
    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mUninstallAppInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/launcher/UninstallRemoveAppPanel;->mAppInfos:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher/model/UninstallItemInfoWithIcon;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->showConfirmPanel()V

    :goto_56
    return-void
.end method
