.class public final synthetic Lcom/android/common/util/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic b:Lcom/android/common/util/p;

.field public static final synthetic c:Lcom/android/common/util/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->b:Lcom/android/common/util/p;

    new-instance v0, Lcom/android/common/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/p;-><init>(I)V

    sput-object v0, Lcom/android/common/util/p;->c:Lcom/android/common/util/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/common/util/p;->a:I

    packed-switch p0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->b(Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_d
    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/launcher3/model/data/ItemInfo;->d(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p0

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
