.class public final synthetic Lx/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lx/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx/a;

    invoke-direct {v0}, Lx/a;-><init>()V

    sput-object v0, Lx/a;->a:Lx/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-static {p1, p2}, Lcom/android/launcher/folder/DisbandFolderHelper;->a(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method
