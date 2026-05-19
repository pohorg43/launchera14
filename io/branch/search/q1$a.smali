.class public Lio/branch/search/q1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/q1;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/q1;


# direct methods
.method public constructor <init>(Lio/branch/search/q1;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/q1$a;->a:Lio/branch/search/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lh4/z;
    .registers 2

    iget-object v0, p0, Lio/branch/search/q1$a;->a:Lio/branch/search/q1;

    invoke-static {v0}, Lio/branch/search/q1;->b(Lio/branch/search/q1;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/q1$a;->a:Lio/branch/search/q1;

    invoke-static {p0}, Lio/branch/search/q1;->a(Lio/branch/search/q1;)Lio/branch/search/q1$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/q1$a;->a()Lh4/z;

    move-result-object p0

    return-object p0
.end method
