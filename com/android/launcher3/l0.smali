.class public final synthetic Lcom/android/launcher3/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/Launcher;

.field public final synthetic b:Lcom/android/launcher/Launcher;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/l0;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/l0;->b:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/l0;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/l0;->d:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/launcher3/l0;->e:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/l0;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/l0;->b:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/l0;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/l0;->d:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/launcher3/l0;->e:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->y(Lcom/android/launcher3/Launcher;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Boolean;)V

    return-void
.end method
