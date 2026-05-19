.class public final synthetic Lcom/android/launcher/n0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/n0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher/n0;->a:I

    packed-switch v0, :pswitch_data_86

    goto :goto_76

    :pswitch_6  #0x6
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_16  #0x5
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/UserHandle;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->a(Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_26  #0x4
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->d(Landroid/view/View;Lcom/android/launcher3/Launcher;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_36  #0x3
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->l(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_46  #0x2
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->g(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_56  #0x1
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_66  #0x0
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher/UninstallRemoveAppPanel;->a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher/UninstallRemoveAppPanel;Lkotlin/jvm/internal/Ref$IntRef;Landroid/content/DialogInterface;I)V

    return-void

    :goto_76
    iget-object v0, p0, Lcom/android/launcher/n0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/launcher/n0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/n0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/oplus/uxicon/ui/util/UxThemeStoreHelper;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_56  #00000001
        :pswitch_46  #00000002
        :pswitch_36  #00000003
        :pswitch_26  #00000004
        :pswitch_16  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
