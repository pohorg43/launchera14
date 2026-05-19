.class public final synthetic Landroidx/core/view/inputmethod/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Lcom/android/launcher/badge/BadgeInfoDiffReporter$DiffResult;
.implements Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;
.implements Lcom/oplus/statistics/util/Supplier;
.implements Lcom/coui/appcompat/edittext/COUIInputView$OnCustomIconClickListener;
.implements Lcom/oplus/zoom/ui/tips/TipsManager$TipsHideListener;
.implements Lcom/oplus/smartsdk/SmartAPICallback;
.implements Lorg/hapjs/card/api/DownloadListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Picture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadProgressDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/tips/TipsController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/app_card/engine/SmartEngine;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Picture;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->b(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .registers 1

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->f(Lcom/android/launcher/download/DownloadProgressDrawable;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lpantanal/app/app_card/engine/SmartEngine;

    invoke-static {p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->e(Lpantanal/app/app_card/engine/SmartEngine;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->e(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/view/View;)V

    return-void
.end method

.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 4

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat;->a(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public onDownloadResult(Ljava/lang/String;II)V
    .registers 4

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1, p2, p3}, Lpantanal/app/instant/engine/InstantAppCardClient;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/String;II)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->l(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResult(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-static {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->h(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public onTipsHide(Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 2

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->f(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void
.end method

.method public onUpdate(FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 4

    iget-object p0, p0, Landroidx/core/view/inputmethod/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->e(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;FLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method
