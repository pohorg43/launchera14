.class public final synthetic Lcom/android/launcher/batchdrag/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic c:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic d:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic e:Lcom/android/launcher/batchdrag/c;

.field public static final synthetic f:Lcom/android/launcher/batchdrag/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->b:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->c:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->d:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->e:Lcom/android/launcher/batchdrag/c;

    new-instance v0, Lcom/android/launcher/batchdrag/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/batchdrag/c;-><init>(I)V

    sput-object v0, Lcom/android/launcher/batchdrag/c;->f:Lcom/android/launcher/batchdrag/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/batchdrag/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher/batchdrag/c;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_22

    :pswitch_6  #0x3
    check-cast p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->f(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x2
    check-cast p1, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->getEduView()Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/ModelWriter;->a(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x0
    check-cast p1, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    return-object p0

    :goto_22
    check-cast p1, Lcom/android/quickstep/GestureState;

    invoke-static {p1}, Lcom/android/quickstep/TouchInteractionService;->m(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_14  #00000001
        :pswitch_d  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
