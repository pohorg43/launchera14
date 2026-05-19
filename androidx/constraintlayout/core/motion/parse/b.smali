.class public final synthetic Landroidx/constraintlayout/core/motion/parse/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/motion/parse/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/constraintlayout/core/motion/parse/b;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/parse/b;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/motion/parse/b;->a:Landroidx/constraintlayout/core/motion/parse/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)I
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
