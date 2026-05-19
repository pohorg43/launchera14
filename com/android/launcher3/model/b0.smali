.class public final synthetic Lcom/android/launcher3/model/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/b0;

.field public static final synthetic c:Lcom/android/launcher3/model/b0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/b0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/b0;->b:Lcom/android/launcher3/model/b0;

    new-instance v0, Lcom/android/launcher3/model/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/b0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/b0;->c:Lcom/android/launcher3/model/b0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/b0;->a:I

    packed-switch p0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0

    :goto_d
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarEduController;->d(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
