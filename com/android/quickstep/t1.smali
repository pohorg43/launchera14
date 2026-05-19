.class public final synthetic Lcom/android/quickstep/t1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/t1;->a:Lcom/android/quickstep/SystemUiProxy;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/t1;->a:Lcom/android/quickstep/SystemUiProxy;

    invoke-static {p0}, Lcom/android/quickstep/SystemUiProxy;->c(Lcom/android/quickstep/SystemUiProxy;)V

    return-void
.end method
