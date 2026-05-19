.class public Ld4/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/p;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Ld4/b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/BranchConfiguration;)V
    .registers 2

    iget-object p0, p0, Ld4/b;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
