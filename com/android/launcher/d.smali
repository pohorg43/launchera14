.class public final synthetic Lcom/android/launcher/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/Launcher;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/d;->a:Lcom/android/launcher/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher/d;->b:Z

    iput-object p3, p0, Lcom/android/launcher/d;->c:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher/d;->d:Z

    iput-boolean p5, p0, Lcom/android/launcher/d;->e:Z

    iput-object p6, p0, Lcom/android/launcher/d;->f:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p7, p0, Lcom/android/launcher/d;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/launcher/d;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/d;->a:Lcom/android/launcher/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher/d;->b:Z

    iget-object v2, p0, Lcom/android/launcher/d;->c:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/launcher/d;->d:Z

    iget-boolean v4, p0, Lcom/android/launcher/d;->e:Z

    iget-object v5, p0, Lcom/android/launcher/d;->f:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v6, p0, Lcom/android/launcher/d;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher/d;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/Launcher;->u0(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
