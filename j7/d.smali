.class public final Lj7/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj7/h;
.implements Lj7/c;


# static fields
.field public static final a:Lj7/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj7/d;

    invoke-direct {v0}, Lj7/d;-><init>()V

    sput-object v0, Lj7/d;->a:Lj7/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lj7/h;
    .registers 2

    sget-object p0, Lj7/d;->a:Lj7/d;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1

    sget-object p0, Li4/x;->a:Li4/x;

    return-object p0
.end method
