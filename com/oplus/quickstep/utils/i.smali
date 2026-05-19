.class public final synthetic Lcom/oplus/quickstep/utils/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/TaskView;

.field public final synthetic b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;ZII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/i;->a:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/i;->b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-boolean p3, p0, Lcom/oplus/quickstep/utils/i;->c:Z

    iput p4, p0, Lcom/oplus/quickstep/utils/i;->d:I

    iput p5, p0, Lcom/oplus/quickstep/utils/i;->e:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/quickstep/utils/i;->a:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/i;->b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-boolean v2, p0, Lcom/oplus/quickstep/utils/i;->c:Z

    iget v3, p0, Lcom/oplus/quickstep/utils/i;->d:I

    iget v4, p0, Lcom/oplus/quickstep/utils/i;->e:I

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->b(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;ZIILjava/lang/Boolean;)V

    return-void
.end method
