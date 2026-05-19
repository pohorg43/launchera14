.class public final Lcom/android/wm/shell/common/DockStateReader_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final contextProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg4/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DockStateReader_Factory;->contextProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;)Lcom/android/wm/shell/common/DockStateReader_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/wm/shell/common/DockStateReader_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/common/DockStateReader_Factory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DockStateReader_Factory;-><init>(Lg4/a;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/DockStateReader;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/common/DockStateReader;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DockStateReader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/DockStateReader;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/DockStateReader_Factory;->contextProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/common/DockStateReader_Factory;->newInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/DockStateReader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DockStateReader_Factory;->get()Lcom/android/wm/shell/common/DockStateReader;

    move-result-object p0

    return-object p0
.end method
