.class public Landroid/support/v4/os/ResultReceiver$b;
.super Landroid/support/v4/os/IResultReceiver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/support/v4/os/ResultReceiver;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver$b;->a:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Landroid/support/v4/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 3

    iget-object p1, p0, Landroid/support/v4/os/ResultReceiver$b;->a:Landroid/support/v4/os/ResultReceiver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/support/v4/os/ResultReceiver$b;->a:Landroid/support/v4/os/ResultReceiver;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
