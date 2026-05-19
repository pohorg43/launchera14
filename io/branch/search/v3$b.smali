.class public Lio/branch/search/v3$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/v3;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lio/branch/search/v3;


# direct methods
.method public constructor <init>(Lio/branch/search/v3;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/v3$b;->b:Lio/branch/search/v3;

    iput-object p2, p0, Lio/branch/search/v3$b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lio/branch/search/v3$b;->b:Lio/branch/search/v3;

    invoke-virtual {v0}, Lio/branch/search/v3;->c()V

    iget-object p0, p0, Lio/branch/search/v3$b;->a:Ljava/lang/Runnable;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_c
    return-void
.end method
