.class public final synthetic Lcom/android/quickstep/e2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# static fields
.field public static final synthetic b:Lcom/android/quickstep/e2;

.field public static final synthetic c:Lcom/android/quickstep/e2;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/e2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/e2;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/e2;->b:Lcom/android/quickstep/e2;

    new-instance v0, Lcom/android/quickstep/e2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/e2;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/e2;->c:Lcom/android/quickstep/e2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/e2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 3

    iget p0, p0, Lcom/android/quickstep/e2;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x0
    invoke-static {p1, p2}, Lcom/android/quickstep/TaskShortcutFactory;->a(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {p1, p2}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->g(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
