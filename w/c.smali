.class public final synthetic Lw/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/HashMap;

.field public final synthetic e:[I

.field public final synthetic f:Ljava/util/HashMap;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;[ILjava/util/HashMap;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lw/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lw/c;->c:Ljava/util/List;

    iput-object p4, p0, Lw/c;->d:Ljava/util/HashMap;

    iput-object p5, p0, Lw/c;->e:[I

    iput-object p6, p0, Lw/c;->f:Ljava/util/HashMap;

    iput-boolean p7, p0, Lw/c;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lw/c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lw/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lw/c;->c:Ljava/util/List;

    iget-object v3, p0, Lw/c;->d:Ljava/util/HashMap;

    iget-object v4, p0, Lw/c;->e:[I

    iget-object v5, p0, Lw/c;->f:Ljava/util/HashMap;

    iget-boolean v6, p0, Lw/c;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/backup/util/LauncherDBUtils;->c(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;[ILjava/util/HashMap;Z)V

    return-void
.end method
