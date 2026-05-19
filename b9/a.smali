.class public Lb9/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lb9/b;


# direct methods
.method public constructor <init>(Lb9/b;Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lb9/a;->c:Lb9/b;

    iput-object p2, p0, Lb9/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lb9/a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lb9/a;->c:Lb9/b;

    iget-object v1, p0, Lb9/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lb9/a;->b:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lb9/b;->s_a(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method
