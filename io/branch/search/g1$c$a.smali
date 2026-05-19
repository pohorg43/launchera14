.class public final Lio/branch/search/g1$c$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/g1$c;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/g1$c;

.field public final synthetic b:Lh4/j;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lio/branch/search/g1$c;Lh4/j;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/g1$c$a;->a:Lio/branch/search/g1$c;

    iput-object p2, p0, Lio/branch/search/g1$c$a;->b:Lh4/j;

    iput-object p3, p0, Lio/branch/search/g1$c$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/g1$c$a;->d:Landroid/os/UserHandle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lio/branch/search/g1$c$a;->b:Lh4/j;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lio/branch/search/g1$c$a;->a:Lio/branch/search/g1$c;

    iget-object v0, v0, Lio/branch/search/g1$c;->a:Lio/branch/search/g1;

    invoke-static {v0}, Lio/branch/search/g1;->a(Lio/branch/search/g1;)Lio/branch/search/v3;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/g1$c$a;->c:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/g1$c$a;->d:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Lio/branch/search/v3;->f(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/g1$c$a;->a()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
