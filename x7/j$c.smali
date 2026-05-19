.class public final Lx7/j$c;
.super Lx7/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lx7/j$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx7/j$c;

    invoke-direct {v0}, Lx7/j$c;-><init>()V

    sput-object v0, Lx7/j$c;->a:Lx7/j$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lx7/j;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
