.class public Lcom/android/wm/shell/common/DockStateReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/dagger/WMSingleton;
.end annotation


# static fields
.field private static final DOCK_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/common/DockStateReader;->DOCK_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DockStateReader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isDocked()Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/common/DockStateReader;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/wm/shell/common/DockStateReader;->DOCK_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method
