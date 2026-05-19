.class public final synthetic Lj0/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic b:Lj0/g;

.field public static final synthetic c:Lj0/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lj0/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj0/g;-><init>(I)V

    sput-object v0, Lj0/g;->b:Lj0/g;

    new-instance v0, Lj0/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj0/g;-><init>(I)V

    sput-object v0, Lj0/g;->c:Lj0/g;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lj0/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    iget p0, p0, Lj0/g;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    new-instance p0, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;

    invoke-direct {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;-><init>()V

    return-object p0

    :goto_c
    new-instance p0, Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;

    invoke-direct {p0}, Lcom/android/quickstep/SwipeUpHandlerExtFoldScreenImpl;-><init>()V

    return-object p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
