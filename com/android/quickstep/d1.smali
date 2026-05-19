.class public final synthetic Lcom/android/quickstep/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/RecentTasksList;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList;ZIZLjava/util/function/Consumer;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/d1;->a:Lcom/android/quickstep/RecentTasksList;

    iput-boolean p2, p0, Lcom/android/quickstep/d1;->b:Z

    iput p3, p0, Lcom/android/quickstep/d1;->c:I

    iput-boolean p4, p0, Lcom/android/quickstep/d1;->d:Z

    iput-object p5, p0, Lcom/android/quickstep/d1;->e:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/d1;->a:Lcom/android/quickstep/RecentTasksList;

    iget-boolean v1, p0, Lcom/android/quickstep/d1;->b:Z

    iget v2, p0, Lcom/android/quickstep/d1;->c:I

    iget-boolean v3, p0, Lcom/android/quickstep/d1;->d:Z

    iget-object p0, p0, Lcom/android/quickstep/d1;->e:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/RecentTasksList;->e(Lcom/android/quickstep/RecentTasksList;ZIZLjava/util/function/Consumer;)V

    return-void
.end method
