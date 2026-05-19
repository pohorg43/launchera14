.class public final synthetic Lcom/android/launcher3/notification/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/notification/d;->a:Lcom/android/launcher3/notification/NotificationListener;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/notification/d;->a:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->d(Lcom/android/launcher3/notification/NotificationListener;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
