.class public final Lf7/g$c;
.super Lf7/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lf7/g$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/g$c;

    invoke-direct {v0}, Lf7/g$c;-><init>()V

    sput-object v0, Lf7/g$c;->b:Lf7/g$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf7/g;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
