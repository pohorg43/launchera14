.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg4/a;


# instance fields
.field private final implProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/OplusShellInitImpl;",
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
            "Lcom/android/wm/shell/OplusShellInitImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;->implProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/a<",
            "Lcom/android/wm/shell/OplusShellInitImpl;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;-><init>(Lg4/a;)V

    return-object v0
.end method

.method public static provideOplusShellInit(Lcom/android/wm/shell/OplusShellInitImpl;)Lcom/android/wm/shell/OplusShellInit;
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule;->provideOplusShellInit(Lcom/android/wm/shell/OplusShellInitImpl;)Lcom/android/wm/shell/OplusShellInit;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/OplusShellInit;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;->implProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/OplusShellInitImpl;

    invoke-static {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;->provideOplusShellInit(Lcom/android/wm/shell/OplusShellInitImpl;)Lcom/android/wm/shell/OplusShellInit;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideOplusShellInitFactory;->get()Lcom/android/wm/shell/OplusShellInit;

    move-result-object p0

    return-object p0
.end method
