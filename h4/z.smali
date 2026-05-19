.class public final Lh4/z;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh4/z;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh4/z;

    invoke-direct {v0}, Lh4/z;-><init>()V

    sput-object v0, Lh4/z;->a:Lh4/z;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "kotlin.Unit"

    return-object p0
.end method
