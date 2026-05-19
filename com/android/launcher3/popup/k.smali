.class public final synthetic Lcom/android/launcher3/popup/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/popup/k;

.field public static final synthetic c:Lcom/android/launcher3/popup/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/k;->b:Lcom/android/launcher3/popup/k;

    new-instance v0, Lcom/android/launcher3/popup/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/k;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/k;->c:Lcom/android/launcher3/popup/k;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    iget p0, p0, Lcom/android/launcher3/popup/k;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppEdit;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppEdit;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :goto_e
    new-instance p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    check-cast p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
