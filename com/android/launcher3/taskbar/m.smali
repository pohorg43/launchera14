.class public final synthetic Lcom/android/launcher3/taskbar/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/taskbar/m;

.field public static final synthetic c:Lcom/android/launcher3/taskbar/m;

.field public static final synthetic d:Lcom/android/launcher3/taskbar/m;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/m;->b:Lcom/android/launcher3/taskbar/m;

    new-instance v0, Lcom/android/launcher3/taskbar/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/m;->c:Lcom/android/launcher3/taskbar/m;

    new-instance v0, Lcom/android/launcher3/taskbar/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/m;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/taskbar/m;->d:Lcom/android/launcher3/taskbar/m;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher3/taskbar/m;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->K(Ljava/lang/Boolean;)V

    return-void

    :pswitch_c  #0x0
    check-cast p1, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;->endAnimation()V

    return-void

    :goto_12
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/SuperPowerSaveModeInputConsumer;->a(Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
