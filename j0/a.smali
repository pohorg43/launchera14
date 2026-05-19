.class public final synthetic Lj0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lj0/a;

.field public static final synthetic c:Lj0/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lj0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj0/a;-><init>(I)V

    sput-object v0, Lj0/a;->b:Lj0/a;

    new-instance v0, Lj0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj0/a;-><init>(I)V

    sput-object v0, Lj0/a;->c:Lj0/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lj0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget p0, p0, Lj0/a;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    check-cast p2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p1, p2}, Lcom/android/launcher3/model/data/AppInfo;->g(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;)I

    move-result p0

    return p0

    :goto_f
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p1, p2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
