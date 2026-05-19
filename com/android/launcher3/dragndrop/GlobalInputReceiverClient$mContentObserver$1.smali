.class public final Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient$mContentObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->access$updateOneHandedMode(Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;)V

    return-void
.end method
